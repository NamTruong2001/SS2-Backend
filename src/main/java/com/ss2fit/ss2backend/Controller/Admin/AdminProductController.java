package com.ss2fit.ss2backend.Controller.Admin;


import com.ss2fit.ss2backend.DTO.CreateDiscountDTO;
import com.ss2fit.ss2backend.DTO.CreateProductDTO;
import com.ss2fit.ss2backend.Service.DiscountService;
import com.ss2fit.ss2backend.Service.FilesStorageService;
import com.ss2fit.ss2backend.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/admin/product")
public class AdminProductController {
    @Autowired
    private FilesStorageService filesStorageService;
    @Autowired
    private ProductService productService;
    @Autowired
    private DiscountService discountService;

    @PostMapping("/create-product")
    public String createProduct(@RequestHeader String host,
                                @ModelAttribute CreateProductDTO createProductDTO,
                                @RequestParam("images") MultipartFile[] multipartFile) {

        List<String> imagesList = Arrays.stream(multipartFile).map(
                file -> {
                    try {
                        return host + filesStorageService.save(file);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
        ).collect(Collectors.toList());
        productService.createProduct(createProductDTO, imagesList);
        return "OK";
    }

    @PostMapping("/apply-discount")
    public ResponseEntity createAndApplyDiscount(@RequestBody CreateDiscountDTO createDiscountDTO) {
        try {
            discountService.createAndApplyDiscount(createDiscountDTO.getDiscountDTO(), createDiscountDTO.getProductIds());

            return new ResponseEntity<>("OK", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }

    @PostMapping("/delete-product")
    public ResponseEntity deleteProduct(@RequestParam("productId") String productId) {
        try {
            productService.deleteProduct(productId);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (EmptyResultDataAccessException err) {
            return new ResponseEntity("Product Not Found", HttpStatus.NOT_FOUND);
        }  catch (Exception e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }
}
