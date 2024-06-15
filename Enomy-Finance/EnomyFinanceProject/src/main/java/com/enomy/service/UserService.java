package com.enomy.service;

import org.springframework.security.crypto.password.PasswordEncoder;

import com.enomy.model.User;

public interface UserService {
    void registerNewClient(String userName, String contactInfo, String emailAddress, String password);

	boolean emailExists(String emailAddress);
	
	void setPasswordEncoder(PasswordEncoder passwordEncoder);

	User findByUsername(String username);
}