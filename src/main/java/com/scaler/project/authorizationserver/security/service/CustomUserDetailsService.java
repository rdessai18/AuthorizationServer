//package com.scaler.project.authorizationserver.security.service;
//
//import com.scaler.project.authorizationserver.security.dto.UserDetailsDto;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//import org.springframework.web.client.RestTemplate;
//
//@Service
//public class CustomUserDetailsService implements UserDetailsService {
//
//    private static final String GET_USER_DETAILS_URI = "http://localhost:8081/users/";
//    private final RestTemplate restTemplate;
//
//    public CustomUserDetailsService(RestTemplate restTemplate) {
//        this.restTemplate = restTemplate;
//    }
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        // call user service here to get user details from username
//        String uri = GET_USER_DETAILS_URI + username;
//        UserDetailsDto userDetailsDto = restTemplate.getForObject(uri, UserDetailsDto.class);
//        return null;
//    }
//}
