package com.enomy.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.enomy.auth.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }



    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	super.configure(auth);
    	System.out.println("Configure Authentication");
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        System.out.println("Configure HttpSecurity");
        http.formLogin()
            .loginPage("/signin")
            .defaultSuccessUrl("/dashboard", true)
            .failureUrl("/signin?error=true")
            .permitAll()
            .and()
            .authorizeRequests()
            .antMatchers(HttpMethod.POST, "/signup").permitAll()
            .antMatchers(HttpMethod.POST, "/currencyconverter").permitAll()
            .antMatchers(HttpMethod.POST, "/invest").permitAll()
            .antMatchers("/", "/signup", "/signin", "/completion", "/welcome").permitAll()
            .antMatchers("/css/**", "/images/**", "/js/**").permitAll()
            .antMatchers("/welcome").hasAnyRole("User", "Admin")
            .antMatchers("/dashboard").hasAnyRole("User", "Admin")
            .antMatchers("/investment").hasAnyRole("User", "Admin")
            .antMatchers("/admin/**").hasRole("Admin")
            .anyRequest().authenticated()
            .and()
	        .logout()
	    	.logoutSuccessUrl("/")
	    	.invalidateHttpSession(true)
	        .deleteCookies("SESSIONID");
    }
}
