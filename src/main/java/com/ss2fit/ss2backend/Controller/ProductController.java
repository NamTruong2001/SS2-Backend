package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.Model.Product;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductRepository productRepository;
    @GetMapping("/products")
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

}
