package com.oe.test.dao;

import com.oe.test.model.User;

import java.util.List;

public interface IUserDao {

    public void addUser(User user);

    public List<User> getAllUsers();

    public void deleteUser(Integer id);

    public User getUserById(Integer id);

    void updateUser(User user);

    public User getUserByUserName(String username);

}
