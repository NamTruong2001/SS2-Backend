package com.ss2fit.ss2backend.Controller;


import com.ss2fit.ss2backend.DTO.OrderDTO;
import com.ss2fit.ss2backend.DTO.CartItem;
import com.ss2fit.ss2backend.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/order/")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @PostMapping("/make-order")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity makeOrder(@RequestBody List<CartItem> cartItems) {
        orderService.makeOrder(cartItems);

        return ResponseEntity.ok().body("Ok");
    }

    @GetMapping("/get-orders")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity getOrders() {
       List<OrderDTO> orderDTOS = orderService.getUserOrders();
       return ResponseEntity.ok().body(orderDTOS);
    }
}
