package com.enomy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class SignInController {

    @GetMapping("/signin")
    public String showSignInForm(Model model, @RequestParam(name = "error", required = false) String error) {
        if ("true".equals(error)) {
            model.addAttribute("signinError", true);
            model.addAttribute("signinErrorMsg", "Email and password don't match. Please try again.");
        }
        return "signin"; // This corresponds to signin.jsp under WEB-INF/views
    }
}