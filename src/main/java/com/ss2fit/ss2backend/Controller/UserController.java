package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.Model.User;
import com.ss2fit.ss2backend.Service.AuthService;
import com.ss2fit.ss2backend.Service.UserService;
import com.ss2fit.ss2backend.utils.Exceptions.PhoneNumberExist;
import com.ss2fit.ss2backend.utils.Exceptions.UserAlreadyExist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/user")
public class UserController {
    @Autowired
    AuthService authService;
    @Autowired
    UserService userService;
    @GetMapping("/info")
    @PreAuthorize("hasAuthority('USER')")
    public User getInfo() {
        return authService.getCurrentUser().getUser();
    }

    @PutMapping("/edit")
    @PreAuthorize("hasAuthority('USER')")
    public ResponseEntity updateUser(@RequestBody User user) {
        try {
            User updatedUser = userService.updateUser(authService.getCurrentUser().getUser(), user);
            return ResponseEntity.ok(updatedUser);
        } catch (PhoneNumberExist e) {
            return ResponseEntity.badRequest().body("Phone number has been taken, please using another number");
        } catch (UserAlreadyExist e) {
            return ResponseEntity.badRequest().body("Username has already exist, please use another name");
        } catch (Exception e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PutMapping("/update-image")
    @PreAuthorize("hasAuthority('USER')")
    public ResponseEntity updateUser(@RequestParam("image") MultipartFile image) {
        try {
            return ResponseEntity.ok(userService.updateAvatar(authService.getCurrentUser().getUser(), image));
        } catch (Exception e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}
