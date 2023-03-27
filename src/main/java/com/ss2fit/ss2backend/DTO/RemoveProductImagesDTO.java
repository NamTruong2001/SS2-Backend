package com.ss2fit.ss2backend.DTO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Data
@Getter
@Setter
public class RemoveProductImagesDTO {
    private String productId;
    private List<Long> productImagesId;
}
