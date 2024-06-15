package com.enomy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
@Configuration @ComponentScan("com.enomy") 

@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {
	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() { InternalResourceViewResolver viewResolver = new
	InternalResourceViewResolver(); viewResolver.setPrefix("/WEB-INF/views/");
	viewResolver.setSuffix(".jsp");
	return viewResolver;
	}

@Override
public void addResourceHandlers(ResourceHandlerRegistry registry) {

    registry.addResourceHandler("/css/**")
        .addResourceLocations("/resources/css/").addResourceLocations("/resources/");

    registry.addResourceHandler("/js/**")
            .addResourceLocations("/resources/js/").addResourceLocations("/resources/");

    registry.addResourceHandler("/images/**")
            .addResourceLocations("/resources/images/").addResourceLocations("/resources/");

	}
}