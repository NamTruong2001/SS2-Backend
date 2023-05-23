package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.ProductDTO;
import com.ss2fit.ss2backend.DTO.SmallProductDTO;
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

    public List<ProductDTO> searchProductAndCategory(String q) {
          return productRepository.searchProductsByName(q)
                  .stream().map(product -> productService.applyDiscountAndConvertToDTO(product)).collect(Collectors.toList());

    }

    public List<ProductDTO> searchProductByPriceBetween(Double start, Double end) {
        List<ProductDTO> productDTOList = productRepository.searchProductByPriceBetween(start, end)
                .stream().map(product -> productService.applyDiscountAndConvertToDTO(product)).collect(Collectors.toList());
        return productDTOList;
    }

    public List<SmallProductDTO> getAllProduct() {
        return productService.getAllProducts().stream().map(
                productDTO -> {
                    SmallProductDTO smallProductDTO = new SmallProductDTO();
                    smallProductDTO.setId(productDTO.getId());
                    smallProductDTO.setName(productDTO.getName());
                    smallProductDTO.setPrice(productDTO.getPrice());
                    smallProductDTO.setImageUrl(productDTO.getProductImages());
                    return smallProductDTO;
                }
        ).collect(Collectors.toList());
    }

}

@Setter
@Getter
@AllArgsConstructor
class CategoryDTO {
    String id;
    String name;
}
