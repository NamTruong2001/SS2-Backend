package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Discount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
@Repository
public interface DiscountRepository extends JpaRepository<Discount, String> {
    @Query("SELECT d from Discount d where CURDATE() >= d.startDate and CURDATE() <= d.endDate")
    List<Discount> getAvailableDiscounts();
}
