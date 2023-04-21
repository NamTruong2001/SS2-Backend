package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.DTO.LoginRequest;
import com.ss2fit.ss2backend.DTO.LoginResponse;
import com.ss2fit.ss2backend.DTO.RegisterRequest;
import com.ss2fit.ss2backend.Service.AuthService;
import com.ss2fit.ss2backend.Service.UserService;
import com.ss2fit.ss2backend.utils.Exceptions.PhoneNumberExist;
import com.ss2fit.ss2backend.utils.Exceptions.UserAlreadyExist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.ParseException;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin("*")
public class AuthController {
    @Autowired
    AuthService authService;
    @Autowired
    UserService userService;
    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@RequestBody LoginRequest loginRequest) {
        LoginResponse loginResponse = authService.login(loginRequest);
        return new ResponseEntity<>(loginResponse, HttpStatus.CREATED);
    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody RegisterRequest registerRequest) {
        try {
            userService.registerUser(registerRequest);
            return new ResponseEntity("Register successfully", HttpStatus.OK);
        } catch (UserAlreadyExist e) {
            return new ResponseEntity("Username existed, please choose another username", HttpStatus.BAD_REQUEST);
        } catch (PhoneNumberExist e) {
            return new ResponseEntity("Phone existed, please choose another phone number", HttpStatus.BAD_REQUEST);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
//        } catch (Exception e) {
//            return new ResponseEntity(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
//        }
    }
}
