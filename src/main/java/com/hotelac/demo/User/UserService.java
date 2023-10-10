package com.hotelac.demo.User;

import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    public UserRepository userRepository;
    
    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
    
    public Optional<User> getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
    public Optional<User> getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    public Optional<User> getUserByUserID(long user_id){
    	return userRepository.findById(user_id);
    }
    
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }
    
    public User addUser(User user) {
    	return userRepository.saveAndFlush(user);
    }
    
    public boolean checkUsername(String username) {
        String regex = "^[a-zA-Z0-9_.]{4,64}$";
        if (!Pattern.matches(regex, username)) {
            return false;
        } else {
            return true;
        }
    }
    
    public boolean checkMail(String email) {
        String regex = "^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        if (!Pattern.matches(regex, email)) {
            return false;
        } else {
            return true;
        }
    }

    public boolean checkPassword(String password) {
        String regex = "^[a-zA-Z0-9_.!@#$]{6,255}$";
        if (!Pattern.matches(regex, password)) {
            return false;
        } else {
            return true;
        }
    }
}
