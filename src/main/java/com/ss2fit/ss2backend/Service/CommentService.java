package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.CommentCreation;
import com.ss2fit.ss2backend.DTO.ItemPage;
import com.ss2fit.ss2backend.Model.CommentAndRate;
import com.ss2fit.ss2backend.Model.CommentImage;
import com.ss2fit.ss2backend.Model.Product;
import com.ss2fit.ss2backend.Repository.CommentRepository;
import com.ss2fit.ss2backend.Repository.ProductRepository;
import com.ss2fit.ss2backend.utils.Exceptions.ProductNotFoundException;
import com.ss2fit.ss2backend.utils.PageableObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class CommentService {
    @Autowired
    CommentRepository commentRepository;
    @Autowired
    FilesStorageService filesStorageService;
    @Autowired
    AuthService authService;
    @Autowired
    ProductRepository productRepository;

    @Transactional
    public CommentAndRate save(CommentCreation createComment, List<MultipartFile> images) throws ProductNotFoundException {
        CommentAndRate commentAndRate = new CommentAndRate();
        List<CommentImage> commentImages = images.stream().map(
                file -> {
                    try {
                        return filesStorageService.saveImage(file);
                    } catch (IOException e) {
                        throw new UncheckedIOException(e);
                    }
                }
        ).map(url -> {
            CommentImage commentImage = new CommentImage();
            commentImage.setUrl(url);
            return commentImage;
        }).collect(Collectors.toList());

        commentAndRate.setCommentImage(commentImages);
        commentAndRate.setText(createComment.getText());
        commentAndRate.setScore(Integer.parseInt(createComment.getRate()));
        commentAndRate.setCreatedDate(new Date());
        commentAndRate.setUser(authService.getCurrentUser().getUser());
        commentAndRate.setProduct(
                productRepository.findById(createComment.getProduct()).orElseThrow(
                        () -> new ProductNotFoundException("Not Found"))
        );

        return commentRepository.save(commentAndRate);
    }

    public ItemPage<CommentAndRate> getCommentsByProduct(String productId, int page, int size, String sortOption, String sortOrder) throws ProductNotFoundException {
        Pageable pageable = PageableObject.getPage(page, size, sortOption, sortOrder);
        Product product = productRepository.findById(productId).orElseThrow(() -> new ProductNotFoundException(""));
        Page<CommentAndRate> commentAndRatePage = commentRepository.getCommentAndRateByProduct(product, pageable);

        ItemPage<CommentAndRate> commentAndRateItemPage =  new ItemPage();
        commentAndRateItemPage.setTotalPages(commentAndRatePage.getNumberOfElements());
        commentAndRateItemPage.setCurrentPage(commentAndRatePage.getNumber());
        commentAndRateItemPage.setPageItems(commentAndRatePage.getContent());
        commentAndRateItemPage.setTotalItems(commentAndRatePage.getTotalElements());

        return commentAndRateItemPage;
    }


    public Map getOverallScore(String id) throws ProductNotFoundException {
        Product product = productRepository.findById(id).orElseThrow(() -> new ProductNotFoundException("Not Found"));
        Map <String, Object> overallObj = new HashMap<>();
        overallObj.put("overall", commentRepository.calculateProductOverallRate(product.getId()));
        overallObj.put("1", commentRepository.getNumberOfRateByType(product.getId(), 1));
        overallObj.put("2", commentRepository.getNumberOfRateByType(product.getId(), 2));
        overallObj.put("3", commentRepository.getNumberOfRateByType(product.getId(), 3));
        overallObj.put("4", commentRepository.getNumberOfRateByType(product.getId(), 4));
        overallObj.put("5", commentRepository.getNumberOfRateByType(product.getId(), 5));

        return overallObj;
    }


    public ItemPage<CommentAndRate> getCommentsByProductAndScore(String id, Integer score,
                                                                 int page,
                                                                 int size,
                                                                 String sortOption,
                                                                 String sortOrder) throws ProductNotFoundException {
        Pageable pageable = PageableObject.getPage(page, size, sortOption, sortOrder);
        Product product = productRepository.findById(id).orElseThrow(() -> new ProductNotFoundException("Not Found!"));
        Page<CommentAndRate> commentAndRatePage = commentRepository.findAllByProductAndScore(product, score, pageable);

        ItemPage<CommentAndRate> commentAndRateItemPage =  new ItemPage();
        commentAndRateItemPage.setTotalPages(commentAndRatePage.getNumberOfElements());
        commentAndRateItemPage.setCurrentPage(commentAndRatePage.getNumber());
        commentAndRateItemPage.setPageItems(commentAndRatePage.getContent());
        commentAndRateItemPage.setTotalItems(commentAndRatePage.getTotalElements());

        return commentAndRateItemPage;
    }



}
