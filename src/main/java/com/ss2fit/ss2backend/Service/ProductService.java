package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.CreateProductDTO;
import com.ss2fit.ss2backend.DTO.DiscountDTO;
import com.ss2fit.ss2backend.DTO.ProductDTO;
import com.ss2fit.ss2backend.Model.*;
import com.ss2fit.ss2backend.Repository.CategoryRepository;
import com.ss2fit.ss2backend.Repository.ProductImageRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import com.ss2fit.ss2backend.utils.Exceptions.CategoryNotFoundException;
import com.ss2fit.ss2backend.utils.Exceptions.ProductNotFoundException;
import com.ss2fit.ss2backend.utils.GenerateRandomString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.modelmapper.ModelMapper;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final ModelMapper modelMapper;
    private final CategoryRepository categoryRepository;

    @Autowired
    public ProductService(ProductRepository productRepository, CategoryRepository categoryRepository,
                          ModelMapper modelMapper, ProductImageRepository productImageRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.modelMapper = modelMapper;
    }

    public ProductDTO getProduct(String id) throws ProductNotFoundException {
        Optional<Product> product = productRepository.findById(id);
        if (product.isPresent()) {
            return applyDiscountAndConvertToDTO(product.get());
        } else {
            throw new ProductNotFoundException("Product Not Found");
        }
    }

    public List<ProductDTO> getProductsByCategoryName(String categoryName) throws CategoryNotFoundException {
        Optional<List<Product>> products = Optional.of(productRepository.findProductsByCategoryName(categoryName));
        if (products.isPresent()) {
            return products.get().stream().
                    map(this::applyDiscountAndConvertToDTO).collect(Collectors.toList());
        } else {
            throw new CategoryNotFoundException("Category Not Found");
        }
    }

    public List<ProductDTO> getAllProducts() {
        List<ProductDTO> productDTOList = productRepository.findAll().stream().
                map(this::applyDiscountAndConvertToDTO).collect(Collectors.toList());

        return productDTOList;
    }

    public void createProduct(CreateProductDTO productDTO, List<String> imageURLs) {
        if (!categoryRepository.existsByName(productDTO.getCategoryName())) {
            categoryRepository.save(
                    new Category(
                            GenerateRandomString.generate(),
                            productDTO.getCategoryName()
                    )
            );
        }
        Product product = modelMapper.map(productDTO, Product.class);
        product.setId(GenerateRandomString.generate());
        product.setCreated_date(new Date());
        product.setCategory(
                categoryRepository.findByName(productDTO.getCategoryName())
        );
        List<ProductImage> productImages = imageURLs.stream().map(
                imageURL -> {
                    ProductImage productImage = new ProductImage();
                    productImage.setImageURL(imageURL);
                    return productImage;
                }
        ).collect(Collectors.toList());

        product.setProductImages(productImages);
        productRepository.save(product);
    }

    private ProductDTO applyDiscountAndConvertToDTO(Product product) {
        ProductDTO productDTO = modelMapper.map(product, ProductDTO.class);
        productDTO.setCategoryName(product.getCategory().getName());
        productDTO.setProductImages(
                product.getProductImages().stream().map(
                        productImage -> productImage.getImageURL()
                ).collect(Collectors.toList())
        );
        if (product.getDiscountProducts().size() > 0) {
            Date currentDate = new Date();
//            List<DiscountProduct> satisfyDiscountProducts =  product.getDiscountProducts().stream().filter(
//                    discountProduct -> currentDate.after(discountProduct.getDiscount().getStartDate())
//                            && currentDate.before(discountProduct.getDiscount().getEndDate())
//            ).collect(Collectors.toList());
            for (DiscountProduct discountProduct : product.getDiscountProducts()) {
                Discount discount = discountProduct.getDiscount();
                if (currentDate.after(discount.getStartDate()) && currentDate.before(discount.getEndDate())) {
                    productDTO.setDiscountPrice(
                            discountProduct.getDiscountPrice()
                    );
                    DiscountDTO discountDTO = modelMapper.map(discount, DiscountDTO.class);
                    discountDTO.setStartDate(discount.getStartDate().toString());
                    discountDTO.setEndDate(discount.getEndDate().toString());
                    productDTO.setDiscountDTO(discountDTO);
                }
            }
//            productDTO.setDiscountPrice(
//                    satisfyDiscountProducts.get(0).getDiscountPrice()
//            );
//            DiscountDTO discountDTO = modelMapper.map(satisfyDiscountProducts.get(0), DiscountDTO.class);
//            discountDTO.setStartDate(discount.getStartDate().toString());
//            discountDTO.setEndDate(discount.getEndDate().toString());
//            productDTO.setDiscountDTO(discountDTO);
        }
        return productDTO;
    }

    public void deleteProduct(String id) {
        productRepository.deleteById(id);
    }

}
