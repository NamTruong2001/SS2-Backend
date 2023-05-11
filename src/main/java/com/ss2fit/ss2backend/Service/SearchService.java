package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.ProductDTO;
import com.ss2fit.ss2backend.Repository.CategoryRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class SearchService {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @Autowired
    ProductService productService;

    public Map<String, Object> searchProductAndCategory(String q) {
          Map<String, Object> results = new HashMap<>();
          results.put("products", productRepository.searchProductByName(q));
          results.put("categories", categoryRepository.searchCategoriesByNa(q).stream().map(
                  cat -> new CategoryDTO(cat.getId(), cat.getName())
          ));
          return results;
    }

    public List<ProductDTO> searchProductByPriceBetween(String start, String end) {
        List<ProductDTO> productDTOList = productRepository.searchProductByPriceBetween(start, end)
                .stream().map(product -> productService.applyDiscountAndConvertToDTO(product)).collect(Collectors.toList());
        return productDTOList;
    }

}

@Setter
@Getter
@AllArgsConstructor
class CategoryDTO {
    String id;
    String name;
}
