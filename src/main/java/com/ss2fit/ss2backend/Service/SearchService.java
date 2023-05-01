package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.Repository.CategoryRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class SearchService {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    CategoryRepository categoryRepository;

    public Map<String, Object> searchProductAndCategory(String q) {
          Map<String, Object> results = new HashMap<>();
          results.put("products", productRepository.searchProductByName(q));
          results.put("categories", categoryRepository.searchCategoriesByNa(q).stream().map(
                  cat -> new CategoryDTO(cat.getId(), cat.getName())
          ));
          return results;
    }
}

@Setter
@Getter
@AllArgsConstructor
class CategoryDTO {
    String id;
    String name;
}
