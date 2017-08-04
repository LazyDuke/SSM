package com.microblog.service;

import com.microblog.domain.User;

import java.util.List;

public interface UserService {
    public void addUser(User user);

    public void updateUserByUserNickname(User user);

    public  User getUserByUserNickname(String userName);

    public void deleteUserByUserNickname(String userName);

    public void loginSuccess(User user);

    public String getPassword(String userName);

    public List<User> getAllUser();
}
