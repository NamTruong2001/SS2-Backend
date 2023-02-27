package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
public class Product {
   @Id
   private String id;
   private String name;
   private String description;
   private double price;
   private Integer quantity;
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "category_id")
   private Category category;
   @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
   private List<ProductImage> productImages;
   @OneToMany(mappedBy = "product")
   private List<DiscountProduct> discountProducts;
   private Date created_date;
}
