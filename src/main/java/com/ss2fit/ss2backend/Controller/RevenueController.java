package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.Service.RevenueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Optional;

@RestController
@RequestMapping("/api/revenue")
@PreAuthorize("hasAnyAuthority('STAFF', 'ADMIN')")
public class RevenueController {
    @Autowired
    RevenueService revenueService;
    @GetMapping
    public ResponseEntity getRevenue(
            @RequestParam(required = false) Optional<Integer> day,
            @RequestParam(required = false) Optional<Integer> month,
            @RequestParam(required = false) Optional<Integer> year
    ) {
        Double revenue = null;
        if (day.isPresent() && month.isPresent() && year.isPresent()) {
            revenue = revenueService.getRevenueByDayMonthYear(day.get(), month.get(), year.get());
        } else if (month.isPresent() && year.isPresent()) {
            revenue = revenueService.getRevenueByMonthYear(month.get(), year.get());
        } else if (year.isPresent()) {
            revenue = revenueService.getRevenueByYear(year.get());
        }
        return ResponseEntity.ok()
                .body(
                        revenue
                );
    }
}
