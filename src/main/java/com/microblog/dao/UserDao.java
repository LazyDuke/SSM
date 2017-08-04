package com.microblog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.microblog.domain.User;

@Repository
public interface UserDao {
	public User findUserByUserNickname(String username);

    public User findUserByUserId(int id);

    public void addUser(User user);

    public void deleteUserByUserNickname(String username);

    public void updateUserByUserNickname(User user);

    public String getUserPasswordByUserNickname(String username);

    public List<User> getAllUserInfo();
}
