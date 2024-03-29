package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Data
public class Order {
    @Id
    private String id;
    private double totalMoney;
    @Enumerated(EnumType.STRING)
    private OrderStatus status;
    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetail;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    private Date createdDate;
    private String phoneNumber;
    private String address;
    private String wards;
    private String province;
    private String district;
    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderHistory> orderHistory = new ArrayList<>();

    public void addOrderHistory(OrderHistory history) {
        orderHistory.add(history);
    }

    public void removeOrderHistory(OrderHistory history) {orderHistory.remove(orderHistory);}

    public enum OrderStatus {
        COMPLETE("COMPLETE"),
        CANCEL("CANCEL"),
        DELIVERING("DELIVERING"),
        PENDING("PENDING");

        private String code;

        private OrderStatus(String code) {
            this.code = code;
        }

        public String getCode() {
            return code;
        }
    }
}
