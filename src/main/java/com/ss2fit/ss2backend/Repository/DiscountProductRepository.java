package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Discount;
import com.ss2fit.ss2backend.Model.DiscountProduct;
import com.ss2fit.ss2backend.Model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DiscountProductRepository extends JpaRepository<DiscountProduct, Long> {
    List<DiscountProduct> findDiscountProductByDiscount(Discount discount);
    long deleteByProductIdAndDiscountCode(String productId, String discountCode);
}
