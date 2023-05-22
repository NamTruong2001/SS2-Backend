package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Discount;
import com.ss2fit.ss2backend.Model.DiscountProduct;
import com.ss2fit.ss2backend.Model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DiscountProductRepository extends JpaRepository<DiscountProduct, Long> {
    List<DiscountProduct> findDiscountProductByDiscount(Discount discount);
    long deleteByProductIdAndDiscountCode(String productId, String discountCode);
    @Query("SELECT e FROM DiscountProduct e WHERE e.product.id IN :productIds AND e.discount.code = :discountId")
    List<DiscountProduct> findDiscountProductsByIdsAndDiscountId(@Param("productIds") String[] productIds,
                                                                 @Param("discountId") String discountId);
}
