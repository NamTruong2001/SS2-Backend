package com.ss2fit.ss2backend.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.beans.BeanUtils;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"username", "phoneNumber"}))
@DynamicUpdate
public class User {
    @Id
    private String id;
    private String username;
    private String firstName;
    private String lastName;
    @JsonIgnore
    private String password;
    @JsonIgnore
    private Date createdDate;
    private String phoneNumber;
    private String address;
    private Date dob;
    private String avatarURL;
    @JsonIgnore
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();
}
