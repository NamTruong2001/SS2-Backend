package com.ss2fit.ss2backend.DTO;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ss2fit.ss2backend.Model.*;
import lombok.*;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {
    private String id;
    @JsonProperty("orderItems")
    private List<OrderItemDTO> orderItemDTOS = new ArrayList<>();
    private Double totalPrice;
    private String status;
    private Date createdDate;
    private String phoneNumber;
    private String address;
    private String ward;
    private String district;
    private String province;
    private List<OrderHistory> orderHistories;
    private String username;
    private String realName;
    
}
