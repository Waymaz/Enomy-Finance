package com.enomy.controller;

import com.enomy.model.User;
import com.enomy.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InvestmentController {

    @Autowired
    private UserService userService;

    @GetMapping("/investment")
    public String showInvestment(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userEmail = authentication.getName();

        User user = userService.findByUsername(userEmail);

        // Add the userName to the model
        model.addAttribute("signedInUserName", user.getUserName());

        return "investment";
    }
}
