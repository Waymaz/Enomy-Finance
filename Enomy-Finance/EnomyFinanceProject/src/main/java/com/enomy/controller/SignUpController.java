package com.enomy.controller;

import com.enomy.model.User;
import com.enomy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;


@Controller
public class SignUpController {

    private final UserService userService;

    @Autowired
    public SignUpController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        // Add an empty User object to the model for form binding
        model.addAttribute("user", new User());
        return "signup";
    }

    @PostMapping("/signup")
    public ModelAndView registerClient(@RequestParam String userName,
                                       @RequestParam String contactInfo,
                                       @RequestParam String emailAddress,
                                       @RequestParam String password,
                                       HttpSession session,
                                       RedirectAttributes redirectAttributes,
                                       Model model) {  // Add Model parameter here
        try {
            // Register client using service method
            userService.registerNewClient(userName, contactInfo, emailAddress, password);
            session.setAttribute("isLogin", true);
            return new ModelAndView("redirect:/completion");
        } catch (RuntimeException e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
            model.addAttribute("user", new User());  // Add an empty User object to the model
            model.addAttribute("errorMessage", e.getMessage());  // Add error message to the model
            return new ModelAndView("signup");  // Return the view name directly
        }
    }

    @GetMapping("/completion")
    public String showRegisterSuccess() {
        return "completion";
    }
}
