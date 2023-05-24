package com.ss2fit.ss2backend.DTO;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UpdateProductDTO {
    private String id;
    private String name;
    private Double price;
    private String description;
    private Integer quantity;
    private String newCategory;
}
