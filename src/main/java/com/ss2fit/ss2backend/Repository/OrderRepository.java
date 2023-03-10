package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Order;
import com.ss2fit.ss2backend.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, String> {
    List<Order> findAllByUser(User user);
}
