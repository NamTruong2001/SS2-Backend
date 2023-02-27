package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Data
public class ProductImage {
    @Id
    @GeneratedValue
    private UUID id;
    private String imageURL;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
