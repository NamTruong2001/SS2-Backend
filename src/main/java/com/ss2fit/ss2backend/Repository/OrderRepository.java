package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Order;
import com.ss2fit.ss2backend.Model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, String> {
    Page<Order> findAllByUserId(String id, Pageable pageable);
}
