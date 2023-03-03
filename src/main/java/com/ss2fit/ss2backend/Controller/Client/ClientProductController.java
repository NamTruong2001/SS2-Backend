package com.ss2fit.ss2backend.Controller.Client;

import com.ss2fit.ss2backend.DTO.ProductDTO;
import com.ss2fit.ss2backend.Model.Product;
import com.ss2fit.ss2backend.Repository.CategoryRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import com.ss2fit.ss2backend.Service.ProductService;
import com.ss2fit.ss2backend.utils.Exceptions.CategoryNotFoundException;
import com.ss2fit.ss2backend.utils.Exceptions.ProductNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api/product/")
public class ClientProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @GetMapping("/products")
    public List<ProductDTO> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/get-product/{id}")
    public ResponseEntity getProduct(@PathVariable(name = "id") String id) {
        try {
            ProductDTO product = productService.getProduct(id);
            return new ResponseEntity<>(
                    product, HttpStatus.OK
            );
        } catch (ProductNotFoundException e) {
            return new ResponseEntity<>(
                    "Product Not Found", HttpStatus.NOT_FOUND
            );
        }
    }

    @GetMapping("/get-product-by-category/{categoryName}")
    public ResponseEntity getProductByCategory(@PathVariable(name = "categoryName") String categoryName) {
        try {
            List<ProductDTO> productDTOList = productService.getProductsByCategoryName(categoryName);
            return new ResponseEntity<>(
                    productDTOList, HttpStatus.OK
            );
        } catch (CategoryNotFoundException e) {
            return new ResponseEntity("Category Not Found", HttpStatus.NOT_FOUND);
        } catch (Exception e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/test")
    public List<Product> test() {
        List<Product> products = productRepository.findProductInDateRange(new Date());
        products.stream().forEach(
                product -> {
                    product.getDiscountProducts().stream().forEach(
                            discountProduct -> {
                                discountProduct.setProduct(null);
                            }
                    );
                    product.setCategory(null);
                }
        );
        return products;
    }
}
