package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.DiscountDTO;
import com.ss2fit.ss2backend.DTO.ProductDTO;
import com.ss2fit.ss2backend.DTO.ProductsDiscountDeletionDTO;
import com.ss2fit.ss2backend.Model.Discount;
import com.ss2fit.ss2backend.Model.DiscountProduct;
import com.ss2fit.ss2backend.Model.Product;
import com.ss2fit.ss2backend.Repository.DiscountProductRepository;
import com.ss2fit.ss2backend.Repository.DiscountRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import com.ss2fit.ss2backend.utils.DateFormat;
import com.ss2fit.ss2backend.utils.Exceptions.DiscountNotFound;
import com.ss2fit.ss2backend.utils.Exceptions.NotFoundException;
import com.ss2fit.ss2backend.utils.GenerateRandomString;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.text.ParseException;
import java.time.DateTimeException;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class DiscountService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private DiscountRepository discountRepository;
    @Autowired
    private DiscountProductRepository discountProductRepository;
    @Autowired
    private ModelMapper modelMapper;

    public void createAndApplyDiscount(DiscountDTO discountDTO, List<String> ids) throws ParseException {
        List<Product> products = productRepository.findByIdIn(ids);
        Discount discount = modelMapper.map(discountDTO, Discount.class);
        discount.setStartDate(DateFormat.parse(discountDTO.getStartDate()));
        discount.setEndDate(DateFormat.parse(discountDTO.getEndDate()));
        discount.setCode(GenerateRandomString.generate());
        discount.setCreatedDate(new Date());
        discountRepository.save(discount);
        if (ids != null && !ids.isEmpty()) {
            List<DiscountProduct> discountProducts = products.stream().map(product -> {
                DiscountProduct discountProduct = new DiscountProduct();
                discountProduct.setDiscount(discount);
                discountProduct.setDiscountPrice(
                        calculateDiscount(product.getPrice(), discount.getDiscountPercent())
                );
                discountProduct.setProduct(product);
                return discountProduct;

            }).collect(Collectors.toList());
            discountProductRepository.saveAll(discountProducts);
        }

    }

    public double calculateDiscount(Double productPrice, double discountPercent) {
        return productPrice - ((discountPercent / 100) * productPrice);
    }

    public Discount getDiscount(String code) throws DiscountNotFound {
        Optional<Discount> discountOptional = discountRepository.findById(code);
        return discountOptional.orElseThrow(DiscountNotFound::new);
    }

    public List<Discount> getAllAvailableDiscount() {
        return discountRepository.getAvailableDiscounts();
    }

    public List<Discount> getAllDiscount() {
        return discountRepository.findAll();
    }

    public List<Map<String, Object>> getDiscountProducts(String code) throws DiscountNotFound {
        Discount discount = discountRepository.findById(code).orElseThrow(DiscountNotFound::new);
        List<DiscountProduct> discountProducts = discountProductRepository.findDiscountProductByDiscount(discount);
        List<Map<String, Object>> productList = new ArrayList<>();

        discountProducts.stream().forEach(discountProduct -> {
            Map<String, Object> products = new HashMap<>();
            products.put("id", discountProduct.getProduct().getId());
            products.put("name", discountProduct.getProduct().getName());
            Double productPrice = discountProduct.getProduct().getPrice();
            products.put("price", productPrice);
            products.put("discountPrice", calculateDiscount(productPrice, discount.getDiscountPercent()));

            productList.add(products);
        });
        return productList;
    }

    @Transactional
    public long deleteDiscountProduct(String discountCode, String productId) throws NotFoundException {
        long rowsAffected = discountProductRepository.deleteByProductIdAndDiscountCode(productId, discountCode);
        if (rowsAffected == 0) {
            throw new NotFoundException();
        }
        return rowsAffected;
    }

    public void deleteMultipleProductFromDiscount(ProductsDiscountDeletionDTO productsDiscountDeletionDTO) throws Exception {
        List<DiscountProduct> discountProducts = discountProductRepository.findDiscountProductsByIdsAndDiscountId(
                productsDiscountDeletionDTO.getProductIds(),
                productsDiscountDeletionDTO.getDiscountCode()
        );
        System.out.println(productsDiscountDeletionDTO);
        for (DiscountProduct discountProduct : discountProducts) {
            Date currDate = new Date();
            Discount discount = discountProduct.getDiscount();
            if (currDate.after(discount.getStartDate()) && currDate.before(discount.getEndDate())) {
                throw new Exception("Không thế xóa chương trình giảm giá đang hoạt dộng");
            } else if (currDate.after(discount.getEndDate())) {
                throw new Exception("Không thế xóa chương trình giảm giá đã hết hạn");
            } else {
                discountProduct.setDiscount(null);
            }
        }
        discountProductRepository.saveAll(discountProducts);
    }

    public void addProductToDiscount(String discountCode, List<String> productIds) throws DiscountNotFound {
        Discount discount = discountRepository.findById(discountCode).orElseThrow(DiscountNotFound::new);
        List<Product> products = productRepository.findByIdIn(productIds);
        List<Product> productSaved = products.stream().map(
                product -> {
                    DiscountProduct discountProduct = new DiscountProduct();
                    discountProduct.setDiscount(discount);
                    discountProduct.setProduct(product);
                    discountProduct.setDiscountPrice(calculateDiscount(
                            product.getPrice(),
                            discount.getDiscountPercent()
                    ));
                    product.addDiscountProduct(discountProduct);
                    return product;
                }
        ).collect(Collectors.toList());

        productRepository.saveAll(productSaved);
    }

    public Discount update(Map updateJson) throws DiscountNotFound, ParseException {
        Discount discount = discountRepository.findById(String.valueOf(updateJson.get("id"))).orElseThrow(DiscountNotFound::new);
        discount.setStartDate(
                (updateJson.get("startDate") == null ? discount.getStartDate()
                        : DateFormat.parse((String) updateJson.get("startDate"))
                ));
        discount.setEndDate((updateJson.get("endDate")) == null ? discount.getStartDate()
                : DateFormat.parse((String) updateJson.get("endDate"))
        );
        discount.setDescription((updateJson.get("description") == null ? discount.getDescription() :
                (String) updateJson.get("description")
        ));
        return discountRepository.save(discount);
    }

}
