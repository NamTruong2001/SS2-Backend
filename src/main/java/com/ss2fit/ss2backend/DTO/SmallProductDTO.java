package com.ss2fit.ss2backend.DTO;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Data
@NoArgsConstructor
@Getter
@Setter
public class SmallProductDTO {
    private String name;
    private Double price;
    private String id;
    private List<String> imageUrl;
}
