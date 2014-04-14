package com.oe.test.service;

import com.oe.test.dao.IUserDao;
import com.oe.test.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;

import java.util.List;

public class UserService implements IUserService {
    @Autowired
    private IUserDao iUserDao;

    @Override
    public void addUser(User user) {
        iUserDao.addUser(user);
    }

    @Override
    public List<User> getAllUsers() {
        return iUserDao.getAllUsers();
    }

    @Override
    public void deleteUser(int id) {
        iUserDao.deleteUser(id);
    }

    public void setiUserDao(IUserDao iUserDao) {
        this.iUserDao = iUserDao;
    }

    @Override
    public User getUserById(Integer id) {
        return iUserDao.getUserById(id);
    }

    @Override
    public void updateUser(User user) {
        iUserDao.updateUser(user);
    }

    @Override
    public User getUserByUserName(String username) {
        return iUserDao.getUserByUserName(username);
    }

    @Override
    public void validatePassEquals(User user, BindingResult result) {
        if (!user.getPass().equals(user.getPass2()))
            result.rejectValue("pass", "form.pass.notequal", "Паролі не збігаються");
    }

}
