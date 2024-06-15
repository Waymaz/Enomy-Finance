package com.enomy.controller;

import com.enomy.model.CurrencyConversionResult; import com.enomy.model.User; import com.enomy.service.CurrencyConversionService; import com.enomy.service.UserService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; import org.springframework.security.core.Authentication; import org.springframework.security.core.context.SecurityContextHolder; import org.springframework.stereotype.Controller; import org.springframework.ui.Model; import org.springframework.web.bind.annotation.GetMapping; import org.springframework.web.bind.annotation.PostMapping; import org.springframework.web.bind.annotation.RequestParam;

@Controller public class CurrencyConverterController {

@Autowired
private UserService userService;

@Autowired
private CurrencyConversionService conversionService;

	@GetMapping("/currencyconverter")
	public String showCurrencyConverter(Model model) {
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
	
	    User user = userService.findByUsername(userEmail);
	
	    // Add the userName to the model
	    model.addAttribute("signedInUserName", user.getUserName());
	
	    // Add an attribute to control the visibility of the conversion result section
	    model.addAttribute("showConversionResult", false);
	
	    // You can add more model attributes if needed
	    // ...
	
	    return "currencyconverter";
	}

	@PostMapping("/currencyconverter")
	public String convertCurrency(
	        @RequestParam double amount,
	        @RequestParam String sourceCurrency,
	        @RequestParam String targetCurrency,
	        HttpServletRequest request,Model model) {
	
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
	
	    User user = userService.findByUsername(userEmail);
	    
	    // Add the userName to the model
	    model.addAttribute("signedInUserName", user.getUserName());
	
	    // Perform the currency conversion and get the result
	    CurrencyConversionResult result = conversionService.convertCurrency(user.getUserId(), amount, sourceCurrency, targetCurrency);
	
	    // Set attributes in HttpServletRequest
	    request.setAttribute("convertedAmount", result.getConvertedAmount());
	    request.setAttribute("fee", result.getFee());
	    request.setAttribute("totalBalance", result.getTotalBalance());
	    request.setAttribute("targetCurrency", result.getTargetCurrency());
	    request.setAttribute("successMessage", "Conversion successful!");
	
	    // Set the attribute to show the conversion result section
	    request.setAttribute("showConversionResult", true);
	
	    // You can add more attributes if needed
	    // ...
	
	    return "currencyconverter";
	}
}