package com.axsos.Taqadam.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
private UserDetailsService userDetailsService;
    
    public WebSecurityConfig(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }
	 @Bean
	    public BCryptPasswordEncoder bCryptPasswordEncoder() {
	        return new BCryptPasswordEncoder();
	    }
	  @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        http.
	            authorizeRequests()
	            .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
            	.antMatchers("/home/company").access("hasRole('ROLE_COMPANY')")
            	.antMatchers("/home/association").access("hasRole('ROLE_ASSOCIATION')")
            	.antMatchers("/home/student").access("hasRole('ROLE_STUDENT')")
            	.antMatchers("/static/**","/photo/**","/css/**", "/js/**", "/registration/**","/home","/webjars/**"
            			).permitAll()

	                .anyRequest().authenticated()
	                .and()
	            .formLogin()
	                .loginPage("/login")
	                .permitAll()
	                .and()
	            .logout()
	                .permitAll();
	    }
	  @Qualifier
	    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	    }     
}
