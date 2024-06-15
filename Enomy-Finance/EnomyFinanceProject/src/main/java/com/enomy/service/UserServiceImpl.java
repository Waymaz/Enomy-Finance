package com.enomy.service;

import com.enomy.model.Role;
import com.enomy.model.User;
import com.enomy.repository.RoleRepository;
import com.enomy.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    @Override
    public void registerNewClient(String userName, String contactInfo, String emailAddress, String password) {
        // Check if client with given email already exists
        if (emailExists(emailAddress)) {
            throw new RuntimeException("Email already exists");
        }

        // Encode the password
        String encodedPassword = passwordEncoder.encode(password);

        // Create new user
        User user = new User();
        user.setUserName(userName);
        user.setEmailAddress(emailAddress);
        user.setContactInfo(contactInfo);
        user.setPassword(encodedPassword); // Store the encoded password

        // Set the user role to "User"
        Role userRole = roleRepository.findByName("User");
        if (userRole == null) {
            throw new RuntimeException("Role 'User' not found. Please make sure it exists in the database.");
        } else {
            user.setRoles(Collections.singleton(userRole));

            // Save user to the database
            userRepository.save(user);

            System.out.println("\nNew User Has Been Registered!"
                    + "\nName: " + userName
                    + "\nEmail: " + emailAddress);
        }
    }

    @Override
    public boolean emailExists(String emailAddress) {
        User user = userRepository.findByemailAddress(emailAddress);
        return user != null;
    }

    @Override
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

//	@Override
//	public User findByUsername(String username) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	@Override
	public User findByUsername(String username) {
	    return userRepository.findByemailAddress(username);
	}
}
