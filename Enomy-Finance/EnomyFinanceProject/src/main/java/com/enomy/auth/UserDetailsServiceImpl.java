package com.enomy.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.enomy.model.Role;
import com.enomy.model.User;
import com.enomy.repository.UserRepository;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String emailAddress) throws UsernameNotFoundException {
        User user = userRepository.findByemailAddress(emailAddress);

        if (user == null) {
            throw new UsernameNotFoundException("User " + emailAddress + " is invalid, please enter again");
        }

        String[] roleNames = user.getRoles().stream().map(Role::getName).toArray(String[]::new);

        System.out.println("Role Names from UserDetailsServiceImpl: " + String.join(", ", roleNames));
        System.out.println("Password: " + user.getPassword());

        return org.springframework.security.core.userdetails.User.builder()
                .username(user.getUserEmailbyName())
                .password(user.getPassword())
                .roles(roleNames)
                .build();
    }
}