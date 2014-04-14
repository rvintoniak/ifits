package com.oe.test.service;

import com.oe.test.model.User;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;

@Service
public interface IUserService {

    public void addUser(User user);

    public List<User> getAllUsers();

    public void deleteUser(int id);

    public User getUserById(Integer id);

    public void updateUser(User user);

    public User getUserByUserName(String username);

    public void validatePassEquals(User user, BindingResult result);


}
