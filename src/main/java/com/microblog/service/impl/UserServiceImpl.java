package com.microblog.service.impl;

import com.microblog.dao.UserDao;
import com.microblog.domain.User;
import com.microblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void addUser(User user) {
        if (user != null) {
            userDao.addUser(user);
        }
    }

    public void updateUserByUserName(User user) {
        if (user != null) {
            userDao.updateUserByUserName(user);
        }
    }

    public User getUserByUserName(String userName) {
        if (userName == null) {
            return null;
        }
        return userDao.findUserByUserName(userName);
    }

    public void deleteUserByUserName(String userName) {

    }

    public void loginSuccess(User user) {

    }

    public String getPassword(String userName) {
        if (userName == null) {
            return null;
        }
        return userDao.getUserPasswordByUserName(userName);
    }

    public List<User> getAllUser() {
        return userDao.getAllUserInfo();
    }
}
