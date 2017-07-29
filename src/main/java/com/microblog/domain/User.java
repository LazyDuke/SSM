package com.microblog.domain;

public class User {
	private Integer userId;
	private String userName;
	private String userPassword;
	public Integer getId() {
		return userId;
	}
	public void setId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return userName;
	}
	public void setName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return userPassword;
	}
	public void setPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
}
