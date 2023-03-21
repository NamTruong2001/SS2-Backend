package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.*;
import com.ss2fit.ss2backend.Model.*;
import com.ss2fit.ss2backend.Repository.OrderRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import com.ss2fit.ss2backend.utils.Exceptions.OrderNotFoundException;
import com.ss2fit.ss2backend.utils.GenerateRandomString;
import com.ss2fit.ss2backend.utils.PageableObject;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import com.ss2fit.ss2backend.DTO.ItemPage;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductService productService;
    @Autowired
    private AuthService authService;
    @Autowired
    private DiscountService discountService;
    @Autowired
    private ModelMapper modelMapper;

    @Transactional
    public String makeOrder(List<CartItem> cartItems) {
        Order order = new Order();
        List<OrderDetail> orderDetails = cartItems.stream()
                .map(cartItem -> {
                            Product product = productService.getProduct(cartItem.getProductId());
                            product.setQuantity(product.getQuantity() - cartItem.getQuantity());
                            productRepository.save(product);
                            OrderDetail orderDetail = new OrderDetail();
                            orderDetail.setDiscountProduct(product.takeCurrentDiscountProduct());
                            orderDetail.setProduct(product);
                            orderDetail.setQuantity(cartItem.getQuantity());
                            orderDetail.setOrder(order);
                            return orderDetail;
                        }
                ).collect(Collectors.toList());
        Double totalMoney = orderDetails.stream().map(orderDetail -> {
            if (orderDetail.getDiscountProduct() == null) {
                return orderDetail.getProduct().getPrice() * orderDetail.getQuantity();
            } else {
                return orderDetail.getDiscountProduct().getDiscountPrice() * orderDetail.getQuantity();
            }
        }).reduce(0.0, Double::sum);
        OrderHistory orderHistory = OrderHistory
                .builder()
                .user(authService.getCurrentUser().getUser())
                .historyOrderStatus(Order.OrderStatus.PENDING)
                .date(new Date())
                .info("Nguời dùng đặt hàng thành công")
                .order(order).build();

        order.setOrderDetail(orderDetails);
        order.setTotalMoney(totalMoney);
        order.setStatus(Order.OrderStatus.PENDING);
        order.setId(GenerateRandomString.generate());
        order.setUser(authService.getCurrentUser().getUser());
        order.setCreatedDate(new Date());
        order.addOrderHistory(orderHistory); //add order history
        Order savedOrder = orderRepository.save(order);
        return savedOrder.getId();
    }

    public ItemPage<OrderDTO> getUserOrders(int page, int size, String sortOption, String sortOrder) {
        Pageable pageable = null;
        if (sortOrder.equals("asc")) {
            pageable = PageRequest.of(page, size, Sort.by(sortOption).ascending());
        } else {
            pageable = PageRequest.of(page, size, Sort.by(sortOption).descending());
        }

        Page<Order> ordersPage = orderRepository.findAllByUserId(
                authService.getCurrentUser().getUser().getId(),
                pageable
        );
        List<OrderDTO> orderDTOList = ordersPage.getContent()
                .stream().map(this::convertOrderToDTO).collect(Collectors.toList());

        ItemPage<OrderDTO> dtoPage = new ItemPage<>();
        dtoPage.setPageItems(orderDTOList);
        dtoPage.setCurrentPage(ordersPage.getNumber());
        dtoPage.setTotalItems(ordersPage.getTotalElements());
        dtoPage.setTotalPages(ordersPage.getTotalPages());


        return dtoPage;
    }

    public ItemPage<OrderDTO> getOrdersAdmin(int page, int size, String sortOption, String sortOrder) {
        Pageable pageable = PageableObject.getPage(page, size, sortOption, sortOrder);
        Page<Order> orderPage = orderRepository.findAll(pageable);

        ItemPage<OrderDTO> dtoPage = new ItemPage<>();
        dtoPage.setPageItems(orderPage.stream()
                .map(this::convertOrderToDTO).collect(Collectors.toList()));
        dtoPage.setCurrentPage(orderPage.getNumber());
        dtoPage.setTotalItems(orderPage.getTotalElements());
        dtoPage.setTotalPages(orderPage.getTotalPages());


        return dtoPage;
    }

    public OrderDTO convertOrderToDTO(Order order) {
        OrderDTO orderDTO = new OrderDTO();
        orderDTO.setTotalPrice(order.getTotalMoney());
        orderDTO.setStatus(order.getStatus().getCode());
        orderDTO.setCreatedDate(order.getCreatedDate());
        List<OrderItemDTO> orderItemDTOS = order.getOrderDetail().stream()
                .map(orderDetail -> {
                    OrderItemDTO orderItemDTO = new OrderItemDTO();
                    orderItemDTO.setOrderQuantity(orderDetail.getQuantity());
                    Product product = orderDetail.getProduct();
                    ProductDTO productDTO = modelMapper.map(product, ProductDTO.class);
                    productDTO.setDiscountPrice(null); //????
                    productDTO.setCategoryName(
                            product.getCategory() == null ? null : product.getCategory().getName()
                    );
                    productDTO.setProductImages(
                            product.getProductImages().stream().map(
                                    ProductImage::getImageURL
                            ).collect(Collectors.toList())
                    );
                    DiscountProduct discountProduct = orderDetail.getDiscountProduct();
                    if (discountProduct == null) {
                        productDTO.setDiscountDTO(null);
                    } else {
                        productDTO.setDiscountPrice(discountProduct.getDiscountPrice());
                        DiscountDTO discountDTO = modelMapper.map(discountProduct.getDiscount(), DiscountDTO.class);
                        discountDTO.setStartDate(discountProduct.getDiscount().getStartDate().toString());
                        discountDTO.setEndDate(discountProduct.getDiscount().getEndDate().toString());
                        productDTO.setDiscountDTO(discountDTO);
                    }
                    orderItemDTO.setProductDTO(productDTO);
                    return orderItemDTO;
                }).collect(Collectors.toList());
        orderDTO.setOrderItemDTOS(orderItemDTOS);
        return orderDTO;
    }

    public Page<OrderDTO> searchOrder(String keyword) {
        Specification<Order> orderSpecification = Specification.where(null);
        return null;
    }

    public OrderDTO setOrderStatusToDelevering(String orderId, String comment) throws OrderNotFoundException {
        Optional<Order> orderOptional = orderRepository.findById(orderId);
        if (orderOptional.isPresent()) {
            Order order = orderOptional.get();
            order.setStatus(Order.OrderStatus.DELIVERING);
            OrderHistory orderHistory = OrderHistory
                    .builder()
                    .user(authService.getCurrentUser().getUser())
                    .historyOrderStatus(Order.OrderStatus.DELIVERING)
                    .date(new Date())
                    .info(comment)
                    .order(order).build();
            orderHistory.setOrder(order);
            order.addOrderHistory(orderHistory);
            orderRepository.save(order);
            return convertOrderToDTO(order);
        } else {
            throw new OrderNotFoundException("order not Found");
        }
    }

    @Transactional
    public OrderDTO setOrderStatusToCancel(String orderId, String comment) throws OrderNotFoundException {
        Optional<Order> orderOptional = orderRepository.findOrderByIdAndUser_Id(orderId,
                authService.getCurrentUser().getUser().getId());

        if (orderOptional.isPresent()) {
            Order order = orderOptional.get();
            order.setStatus(Order.OrderStatus.CANCEL);
            order.getOrderDetail().stream()
                    .forEach(orderDetail -> {
                        Product product = orderDetail.getProduct();
                        product.setQuantity(product.getQuantity() + orderDetail.getQuantity());
                        productRepository.save(product);
                    });
            User user = authService.getCurrentUser().getUser();
            OrderHistory orderHistory = OrderHistory
                    .builder()
                    .user(user)
                    .historyOrderStatus(Order.OrderStatus.CANCEL)
                    .date(new Date())
                    .info(comment)
                    .order(order).build();
            order.addOrderHistory(orderHistory);
            orderRepository.save(order);
            return convertOrderToDTO(order);
        } else {
            throw new OrderNotFoundException("Order not Found");
        }
    }

    @Transactional
    public OrderDTO setOrderStatusToCancelByAdmin(String orderId, String comment) throws OrderNotFoundException {
        Optional<Order> orderOptional = orderRepository.findOrderByIdAndUser_Id(orderId,
                authService.getCurrentUser().getUser().getId());

        if (orderOptional.isPresent()) {
            Order order = orderOptional.get();
            order.setStatus(Order.OrderStatus.CANCEL);
            order.getOrderDetail().stream()
                    .forEach(orderDetail -> {
                        Product product = orderDetail.getProduct();
                        product.setQuantity(product.getQuantity() + orderDetail.getQuantity());
                        productRepository.save(product);
                    });
            User user = authService.getCurrentUser().getUser();
            OrderHistory orderHistory = OrderHistory
                    .builder()
                    .user(user)
                    .historyOrderStatus(Order.OrderStatus.CANCEL)
                    .date(new Date())
                    .info(comment)
                    .order(order).build();
            order.addOrderHistory(orderHistory);
            orderRepository.save(order);
            return convertOrderToDTO(order);
        } else {
            throw new OrderNotFoundException("Order not Found");
        }
    }

    public OrderDTO setOrderStatusToComplete(String orderId, String comment) throws OrderNotFoundException {
        Optional<Order> orderOptional = orderRepository.findById(orderId);
        if (orderOptional.isPresent()) {
            Order order = orderOptional.get();
            order.setStatus(Order.OrderStatus.COMPLETE);
            OrderHistory orderHistory = OrderHistory
                    .builder()
                    .user(authService.getCurrentUser().getUser())
                    .historyOrderStatus(Order.OrderStatus.COMPLETE)
                    .date(new Date())
                    .info(comment)
                    .order(order).build();
            order.addOrderHistory(orderHistory);
            orderRepository.save(order);
            return convertOrderToDTO(order);
        } else {
            throw new OrderNotFoundException("Order not Found");
        }
    }

    public List<OrderHistory> getOrderHistory(String orderId) throws OrderNotFoundException {
        Optional<Order> optionalOrder = orderRepository.findById(orderId);
        if (optionalOrder.isPresent()) {
            return optionalOrder.get().getOrderHistory();
        } else {
            throw new OrderNotFoundException("Order Not Found");
        }
    }


}
