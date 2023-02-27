package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

@Entity
@Data
public class Order {
    @Id
    private String id;
    private double total_money;
    @Enumerated(EnumType.ORDINAL)
    private OrderStatus status;
    public enum OrderStatus {
        COMPLETE,
        REJECT
    }
}
