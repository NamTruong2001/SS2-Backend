package com.ss2fit.ss2backend.Repository;

import com.ss2fit.ss2backend.Model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, String> {
}
