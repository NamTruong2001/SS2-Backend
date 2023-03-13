package com.ss2fit.ss2backend.Controller;


import com.ss2fit.ss2backend.DTO.ItemPage;
import com.ss2fit.ss2backend.DTO.OrderDTO;
import com.ss2fit.ss2backend.DTO.CartItem;
import com.ss2fit.ss2backend.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/order/")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @PostMapping("/make-order")
    @PreAuthorize("isAuthenticated() and hasAuthority('USER')")
    public ResponseEntity makeOrder(@RequestBody List<CartItem> cartItems) {
        orderService.makeOrder(cartItems);

        return ResponseEntity.ok().body("Ok");
    }

    @GetMapping("/get-orders")
    @PreAuthorize("isAuthenticated() and hasAuthority('USER')")
    public ResponseEntity getOrdersByUser(
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size,
            @RequestParam(defaultValue = "createdDate") String sort,
            @RequestParam(defaultValue = "desc") String sortOrder
            ) {
       ItemPage<OrderDTO> dtoPage = orderService.getUserOrders(page, size, sort, sortOrder);
       return ResponseEntity.ok().body(dtoPage);
    }
}
