package com.ss2fit.ss2backend.DTO;

import lombok.*;

import java.util.List;

@Setter
@Getter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderCreation {
    private String phoneNumber;
    private String address;
    private String wards;
    private String province;
    private String district;
    private List<CartItem> items;
}
