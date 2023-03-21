package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.Repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RevenueService {
    @Autowired
    OrderRepository orderRepository;

    public Double getRevenueByDayMonthYear(int day, int month, int year) {
        return orderRepository.getRevenueByDayMonthYear(day, month, year);
    }

    public Double getRevenueByMonthYear(int month, int year) {
        return orderRepository.getRevenueByMonthYear(month, year);
    }

    public Double getRevenueByYear(int year) {
        return orderRepository.getRevenueByYear(year);
    }
}
