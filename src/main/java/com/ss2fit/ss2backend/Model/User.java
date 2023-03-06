package com.ss2fit.ss2backend.Model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"username"}))
public class User {
    @Id
    private String id;
    private String username;
    private String firstName;
    private String lastName;
    private String password;
    private Date createdDate;
}
