package com.ss2fit.ss2backend.Controller;


import com.ss2fit.ss2backend.DTO.ProductsCategoryDeleteionDTO;
import com.ss2fit.ss2backend.Service.CategoryService;
import com.ss2fit.ss2backend.utils.Exceptions.CategoryExistException;
import com.ss2fit.ss2backend.utils.Exceptions.ProductNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/category")
@CrossOrigin(origins = "*")
public class CategoryController {
    @Autowired
    public CategoryService categoryService;

    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    @PostMapping("/create-category")
    public ResponseEntity newCategory(@RequestParam("name") String name) {
        try {
            categoryService.createCategory(name);
            return new ResponseEntity(
                    HttpStatus.CREATED
            );
        } catch (CategoryExistException ce) {
            return ResponseEntity.badRequest().body(ce.getMessage());
        }
    }

    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    @PostMapping("/update-category")
    public void updateCategory(@RequestParam("id") String id,
                               @RequestParam("newName") String newName) {
        categoryService.updateCategory(id, newName);
    }

    @GetMapping("/get-categories")
    public ResponseEntity getCategories() {
        return new ResponseEntity<>(
                categoryService.getAllCategories(),
                HttpStatus.OK
        );
    }

    @PreAuthorize("hasAnyAuthority('STAFF', 'ADMIN')")
    @PostMapping("/delete-products")
    public ResponseEntity deleteProductsFromCategory(@RequestBody ProductsCategoryDeleteionDTO productsCategoryDeleteionDTO) {
        try {
            categoryService.deleteProductsFromCategory(productsCategoryDeleteionDTO);
            return ResponseEntity.ok("Delete successfully!");
        } catch (Exception e) {
            if (e instanceof ProductNotFoundException) {
                return ResponseEntity.badRequest().body("Product Not Found");
            }
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PreAuthorize("isAuthenticated() and hasAnyAuthority('STAFF', 'ADMIN')")
    @PostMapping ("/delete-category")
    public ResponseEntity deleteCategory(@RequestParam("categoryName") String categoryName) {
        try {
            categoryService.deleteCategory(categoryName);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }
}
