package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Order;
import com.ss2fit.ss2backend.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<Order, String> {
    Page<Order> findAllByUserId(String id, Pageable pageable);
    Page<Order> findOrdersByUserUsername(String username, Pageable pageable);
    Optional<Order> findOrderByIdAndUser(String orderId, User user);
    Optional<Order> findOrderByIdAndUser_Id(String orderId, String username);

    @Query("SELECT SUM(o.totalMoney) FROM Order o WHERE o.status = 'COMPLETE' AND DAY(o.createdDate) = :day AND MONTH(o.createdDate) = :month AND YEAR(o.createdDate) = :year")
    Double getRevenueByDayMonthYear(@Param("day") int day, @Param("month") int month, @Param("year") int year);

    @Query("SELECT SUM(o.totalMoney) FROM Order o WHERE o.status = 'COMPLETE' AND MONTH(o.createdDate) = :month AND YEAR(o.createdDate) = :year")
    Double getRevenueByMonthYear(@Param("month") int month, @Param("year") int year);

    @Query("SELECT SUM(o.totalMoney) FROM Order o WHERE o.status = 'COMPLETE' AND YEAR(o.createdDate) = :year")
    Double getRevenueByYear(@Param("year") int year);

}
