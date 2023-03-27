package com.ss2fit.ss2backend.Model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Discount {
    @Id
    private String code;
    private String description;
    private Double discountPercent;
    private Date createdDate;
    private Date startDate;
    private Date endDate;

}
