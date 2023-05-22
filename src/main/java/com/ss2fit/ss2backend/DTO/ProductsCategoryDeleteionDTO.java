package com.ss2fit.ss2backend.DTO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class ProductsCategoryDeleteionDTO {
    private String[] productIds;
    private String categoryId;
}
