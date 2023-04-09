package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.CommentAndRate;
import com.ss2fit.ss2backend.Model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommentRepository extends JpaRepository<CommentAndRate, Long> {
    Page<CommentAndRate> getCommentAndRateByProduct(Product product, Pageable pageable);

    @Query("SELECT (SUM(cr.score) / COUNT(cr.score)) as score from CommentAndRate cr where cr.product.id = :product")
    Double calculateProductOverallRate(@Param("product") String id);

    @Query("select count(cr.id) from CommentAndRate cr where cr.product.id = :product and cr.score = :score")
    int getNumberOfRateByType(@Param("product") String id, @Param("score") Integer score);

    Page<CommentAndRate> findAllByProductAndScore(Product product, Integer score, Pageable pageable);
}
