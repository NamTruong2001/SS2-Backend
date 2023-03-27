package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.DTO.CreateDiscountDTO;
import com.ss2fit.ss2backend.Service.DiscountService;
import com.ss2fit.ss2backend.utils.Exceptions.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/discount")
@PreAuthorize("hasAnyAuthority('STAFF', 'ADMIN')")
@CrossOrigin("*")
public class DiscountController {
    @Autowired
    DiscountService discountService;

    @PostMapping("/create")
    public ResponseEntity<String> createAndApplyDiscount(@RequestBody CreateDiscountDTO createDiscountDTO) {
        try {
            discountService.createAndApplyDiscount(createDiscountDTO.getDiscountDTO(), createDiscountDTO.getProductIds());
            return new ResponseEntity<>("OK", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }

    @PutMapping("/add-applied-product")
    public ResponseEntity addAppliedProduct(@RequestBody Map updateJson) {
        try {
            List<String> newProductIds = (List<String>) updateJson.get("products");
            String discountCode = (String) updateJson.get("discount");
            discountService.addProductToDiscount(discountCode, newProductIds);
            return ResponseEntity.ok().body("Added successfully");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e);
        }
    }

    @PostMapping("/update")
    public ResponseEntity update(@RequestBody Map updateJson) {
        try {
            return ResponseEntity.ok().body(
              discountService.update(updateJson)
            );
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e);
        }
    }


    @DeleteMapping("/remove-applied-prouduct")
    public ResponseEntity removeAppliedProduct(@RequestParam("product") String productId,
                                 @RequestParam("discount") String discountCode) {
        Map<String, Object> mess = new HashMap<>();
        try {
            long rowsAffected = discountService.deleteDiscountProduct(discountCode, productId);
            mess.put("messege", "Deleted successfully");
            mess.put("deletedRows", rowsAffected);
            return ResponseEntity.ok().body(
                    mess
            );
        } catch (NotFoundException e) {
            mess.put("messege", "No records found");
            mess.put("deletedRows", 0);
            return ResponseEntity.badRequest().body(mess);
        }
    }

    @GetMapping("/get/{code}")
    public ResponseEntity get(@PathVariable("code") String code) {
        try {
            return ResponseEntity.ok(discountService.getDiscount(code));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("/applied-products/{code}")
    public ResponseEntity getAppliedProducts(@PathVariable("code") String code) {
        try {
            return ResponseEntity.ok(discountService.getDiscountProducts(code));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e);
        }
    }

    @GetMapping("/all")
    public ResponseEntity getAllDiscounts() {
        return ResponseEntity.ok(discountService.getAllDiscount());
    }

    @GetMapping("/available")
    public ResponseEntity getAvailableDiscounts() {
        return ResponseEntity.ok(discountService.getAllAvailableDiscount());
    }

}
