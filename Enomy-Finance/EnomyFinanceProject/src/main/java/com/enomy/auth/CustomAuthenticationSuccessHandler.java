//package com.enomy.auth;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//import org.springframework.stereotype.Component;
//
//import com.enomy.model.User;
//import com.enomy.repository.UserRepository;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@Component
//public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
//
//    private final UserRepository userRepository;
//
//    @Autowired
//    public CustomAuthenticationSuccessHandler(UserRepository userRepository) {
//        this.userRepository = userRepository;
//    }
//
//    @Override
//    public void onAuthenticationSuccess(HttpServletRequest request,
//                                        HttpServletResponse response,
//                                        Authentication authentication)
//            throws IOException, ServletException {
//
//        // Get the logged-in user details
//        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
//
//        // Fetch additional details such as first name from the database
//        User user = userRepository.findByEmailAddress(userDetails.getUsername());
//
//        if (user != null) {
//            String userEmail = userDetails.getUsername();
//            String userName = user.getUserName();
//
//            // Set the session attributes "isLogin", "userEmail", and "name"
//            HttpSession session = request.getSession();
//            session.setAttribute("isLogin", true);
//            session.setAttribute("userEmail", userEmail);
//            session.setAttribute("name", userName);
//
//            // Redirect the user to the home page or any other desired page
//            response.sendRedirect("/dashboard"); // Assuming "/dashboard" is the correct URL
//        } else {
//            // Set the error attributes
//            request.getSession().setAttribute("error", true);
//            request.getSession().setAttribute("errorMsg", "Login failed. Please check your email and password.");
//
//            // Redirect back to the login page
//            response.sendRedirect("/signin"); // Assuming "/signup" is the correct URL
//        }
//    }
//}
