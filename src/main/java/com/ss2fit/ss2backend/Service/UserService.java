package com.ss2fit.ss2backend.Service;

import com.ss2fit.ss2backend.DTO.RegisterRequest;
import com.ss2fit.ss2backend.Model.CustomUserDetails;
import com.ss2fit.ss2backend.Model.User;
import com.ss2fit.ss2backend.Repository.RoleRepository;
import com.ss2fit.ss2backend.Repository.UserRepository;
import com.ss2fit.ss2backend.utils.DateFormat;
import com.ss2fit.ss2backend.utils.Exceptions.PhoneNumberExist;
import com.ss2fit.ss2backend.utils.Exceptions.UserAlreadyExist;
import com.ss2fit.ss2backend.utils.GenerateRandomString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;
import java.util.Set;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private FilesStorageService filesStorageService;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findUserByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException(username);
        }
        return new CustomUserDetails(user);
    }

    public UserDetails loadUserById(String userId) throws Exception {
        Optional<User> user = userRepository.findById(userId);
        if (!user.isPresent()) {
            throw new Exception("User not found");
        }

        return new CustomUserDetails(user.get());
    }

    public void registerUser(RegisterRequest registerRequest) throws UserAlreadyExist, ParseException, PhoneNumberExist {

        if (userRepository.findUserByUsername(registerRequest.getUsername()) != null) {
            throw new UserAlreadyExist();
        }
//        System.out.println(userRepository.existsByPhoneNumber(registerRequest.getPhoneNumber()));
//        if (userRepository.existsByPhoneNumber(registerRequest.getPhoneNumber())) {
//            throw new PhoneNumberExist();
//        }

        User user = new User();
        user.setUsername(registerRequest.getUsername());
        user.setFirstName(registerRequest.getFirstName());
        user.setId(GenerateRandomString.generate());
        user.setLastName(registerRequest.getLastName());
        user.setPassword(passwordEncoder.encode(registerRequest.getPassword()));
        user.setAddress(registerRequest.getAddress());
        user.setDob(registerRequest.getDob() == null ? null : new SimpleDateFormat("yyyy-MM-dd").parse(registerRequest.getDob()));
        user.setCreatedDate(new Date());
        user.setRoles(Set.of(roleRepository.findById(1).get()));

        userRepository.save(user);
    }


    public User updateUser(User currUser, User eidtUser) throws UserAlreadyExist, PhoneNumberExist {
        if (eidtUser.getUsername() != null && userRepository.existsByUsername(eidtUser.getUsername())) {
            throw new UserAlreadyExist();
        }
        if (eidtUser.getPhoneNumber() != null && userRepository.existsByPhoneNumber(eidtUser.getPhoneNumber())) {
            throw new PhoneNumberExist();
        }

        if (eidtUser.getUsername() != null && !eidtUser.getUsername().equals(currUser.getUsername())) {
            currUser.setUsername(eidtUser.getUsername());
        }

        // Check if the first name has been updated
        if (eidtUser.getFirstName() != null && !eidtUser.getFirstName().equals(currUser.getFirstName())) {
            currUser.setFirstName(eidtUser.getFirstName());
        }

        // Check if the last name has been updated
        if (eidtUser.getLastName() != null && !eidtUser.getLastName().equals(currUser.getLastName())) {
            currUser.setLastName(eidtUser.getLastName());
        }

        // Check if the phone number has been updated
        if (eidtUser.getPhoneNumber() != null && !eidtUser.getPhoneNumber().equals(currUser.getPhoneNumber())) {
            currUser.setPhoneNumber(eidtUser.getPhoneNumber());
        }

        // Check if the address has been updated
        if (eidtUser.getAddress() != null && !eidtUser.getAddress().equals(currUser.getAddress())) {
            currUser.setAddress(eidtUser.getAddress());
        }

        // Check if the date of birth has been updated
        if (eidtUser.getDob() != null && !eidtUser.getDob().equals(currUser.getDob())) {
            currUser.setDob(eidtUser.getDob());
        }

        return userRepository.save(currUser);
    }

    public String updateAvatar(User currUser, MultipartFile multipartFile) throws IOException {
        String imageName = filesStorageService.saveImage(multipartFile);
        currUser.setAvatarURL(imageName);
        userRepository.save(currUser);

        return imageName;
    }

}
