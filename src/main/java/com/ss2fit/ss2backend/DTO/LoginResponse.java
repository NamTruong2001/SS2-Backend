package com.ss2fit.ss2backend.DTO;

import com.ss2fit.ss2backend.Model.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@AllArgsConstructor
@Data
@Getter
@Setter
public class LoginResponse {
    private String jwtToken;
    private String userName;
    private String phoneNumber;
    private Set<Role> roles;
}
