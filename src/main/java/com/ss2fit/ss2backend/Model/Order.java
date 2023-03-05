package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Order {
    @Id
    private String id;
    private double total_money;
    @Enumerated(EnumType.ORDINAL)
    private OrderStatus status;
    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetail;
    public enum OrderStatus {
        COMPLETE,
        REJECT
    }
}
