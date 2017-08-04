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

    public void updateUserByUserNickname(User user) {
        if (user != null) {
            userDao.updateUserByUserNickname(user);
        }
    }

    public User getUserByUserNickname(String userName) {
        if (userName == null) {
            return null;
        }
        return userDao.findUserByUserNickname(userName);
    }

    public void deleteUserByUserNickname(String userName) {

    }

    public void loginSuccess(User user) {

    }

    public String getPassword(String userName) {
        if (userName == null) {
            return null;
        }
        return userDao.getUserPasswordByUserNickname(userName);
    }

    public List<User> getAllUser() {
        return userDao.getAllUserInfo();
    }
}
