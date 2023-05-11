package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.Service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/search")
public class SearchController {
    @Autowired
    SearchService searchService;
    @GetMapping("/pro-and-cat")
    public ResponseEntity searchProduct(@RequestParam("q") String q) {
        return ResponseEntity.ok(searchService.searchProductAndCategory(q));
    }

    @GetMapping("/price")
    public ResponseEntity searchProductByPriceBetween(@RequestParam("start") String start,
                                               @RequestParam("end") String end) {
     return ResponseEntity.ok(searchService.searchProductByPriceBetween(start, end));
    }
}
