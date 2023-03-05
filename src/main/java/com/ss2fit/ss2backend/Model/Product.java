package com.ss2fit.ss2backend.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
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
//   @Column(columnDefinition = "TEXT")
   @Lob
   private String description;
   private double price;
   private Integer quantity;
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "category_id")
   private Category category;
   @OneToMany(fetch = FetchType.LAZY)
   @JoinColumn(name = "product_id")
   private List<ProductImage> productImages;
   @OneToMany(mappedBy = "product")
   @JsonManagedReference
   private List<DiscountProduct> discountProducts;
   private Date created_date;

}
