package com.ss2fit.ss2backend.Controller.Admin;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/admin")
public class AdminCategoryController {
    @PostMapping("/create-category")
    public ResponseEntity newCategory(List<String> categoryName) {
        return null;
    }

    @PutMapping("/update-category")
    public ResponseEntity updateCategory(@RequestParam("id") String categoryName,
                                         @RequestParam("newName") String newName) {
        return null;
    }
}
