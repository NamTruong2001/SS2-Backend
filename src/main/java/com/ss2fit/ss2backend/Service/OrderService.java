package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.*;
import com.ss2fit.ss2backend.Model.*;
import com.ss2fit.ss2backend.Repository.OrderRepository;
import com.ss2fit.ss2backend.utils.GenerateRandomString;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private ProductService productService;
    @Autowired
    private AuthService authService;
    @Autowired
    private DiscountService discountService;
    @Autowired
    private ModelMapper modelMapper;

    @Transactional
    public void makeOrder(List<CartItem> cartItems) {
        Order order = new Order();
        List<OrderDetail> orderDetails = cartItems.stream()
                .map(cartItem -> {
                            Product product = productService.getProduct(cartItem.getProductId());
                            OrderDetail orderDetail = new OrderDetail();
                            orderDetail.setDiscountProduct(product.getCurrentDiscountProduct());
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
        order.setOrderDetail(orderDetails);
        order.setTotalMoney(totalMoney);
        order.setStatus(Order.OrderStatus.PENDING);
        order.setId(GenerateRandomString.generate());
        order.setUser(authService.getCurrentUser().getUser());
        order.setCreatedDate(new Date());
        orderRepository.save(order);
    }

    public List<OrderDTO> getUserOrders() {
        List<Order> orders = orderRepository.findAllByUser(
                authService.getCurrentUser().getUser()
        );

        return orders.stream().map(this::convertOrderToDTO).collect(Collectors.toList());
    }

    public OrderDTO convertOrderToDTO(Order order) {
        OrderDTO orderDTO = new OrderDTO();
        orderDTO.setTotalPrice(order.getTotalMoney());
        orderDTO.setStatus(order.getStatus().getCode());
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
}
