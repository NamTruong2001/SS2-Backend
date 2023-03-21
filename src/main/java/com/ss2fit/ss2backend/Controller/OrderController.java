package com.ss2fit.ss2backend.Controller;


import com.ss2fit.ss2backend.DTO.ItemPage;
import com.ss2fit.ss2backend.DTO.OrderDTO;
import com.ss2fit.ss2backend.DTO.CartItem;
import com.ss2fit.ss2backend.Service.OrderService;
import com.ss2fit.ss2backend.utils.Exceptions.OrderNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/order/")
@CrossOrigin("*")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @PostMapping("/make-order")
    @PreAuthorize("isAuthenticated() and hasAuthority('USER')")
    public ResponseEntity makeOrder(@RequestBody List<CartItem> cartItems) {

        return ResponseEntity.ok().body(orderService.makeOrder(cartItems));
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

    @PostMapping("/admin-orders")
    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    public ResponseEntity getOrdersAdmin(
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size,
            @RequestParam(defaultValue = "createdDate") String sortBy,
            @RequestParam(defaultValue = "desc") String sortOrder
    ) {
        ItemPage<OrderDTO> dtoItemPage = orderService.getOrdersAdmin(page, size, sortBy, sortOrder);
        return ResponseEntity.ok().body(dtoItemPage);
    }

    @PostMapping("/delivering")
    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    public ResponseEntity setOrderDelivering(@RequestBody Map<String, String> orderRequest) {
        try {
            System.out.println(orderRequest.get("id"));
            return ResponseEntity.ok().body(
                    orderService.setOrderStatusToDelevering(orderRequest.get("id"), orderRequest.get("comment"))
            );
        } catch (OrderNotFoundException ex) {
            return ResponseEntity.badRequest().body(ex);
        }
    }

    @PostMapping("/cancel")
    @PreAuthorize("isAuthenticated() and hasAnyAuthority('USER')")
    public ResponseEntity cancelOrder(@RequestBody Map<String, String> orderRequest) {
        try {
            return ResponseEntity.ok().body(
                    orderService.setOrderStatusToCancel(orderRequest.get("id"), orderRequest.get("comment"))
            );
        } catch (OrderNotFoundException ex) {
            return ResponseEntity.badRequest().body(ex);
        }
    }

    @PostMapping("/admin-cancel")
    @PreAuthorize("isAuthenticated() and hasAnyAuthority('ADMIN', 'STAFF')")
    public ResponseEntity cancelOrderByAdmin(@RequestBody Map<String, String> orderRequest) {
        try {
            return ResponseEntity.ok().body(
                    orderService.setOrderStatusToCancelByAdmin(orderRequest.get("id"), orderRequest.get("comment"))
            );
        } catch (OrderNotFoundException ex) {
            return ResponseEntity.badRequest().body(ex);
        }
    }

    @PostMapping("/complete")
    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    public ResponseEntity setOrderComplete(@RequestBody Map<String, String> orderRequest) {
        try {
            return ResponseEntity.ok().body(
                    orderService.setOrderStatusToComplete(orderRequest.get("id"), orderRequest.get("comment"))
            );
        } catch (OrderNotFoundException ex) {
            return ResponseEntity.badRequest().body(ex);
        }
    }

    @GetMapping("/view-history/{id}")
    public ResponseEntity getOrderHistory(@PathVariable("id") String id) {
        try {
            return ResponseEntity.ok().body(orderService.getOrderHistory(id));
        } catch (OrderNotFoundException ex) {
            return ResponseEntity.ok().body(ex);
        }
    }


//    @GetMapping("status")
//    public ResponseEntity getStatusWithCount(
//            @RequestParam(required = false) Optional<Integer> day,
//            @RequestParam(required = false) Optional<Integer> month,
//            @RequestParam(required = false) Optional<Integer> year
//    ) {
//        Map<String, Integer> map = new HashMap<>();
//
//    }

}
