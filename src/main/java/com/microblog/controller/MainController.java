package com.microblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	//显示主页
	@RequestMapping("/")
    public String index() {
        return "index";
    }
	
	// 显示用户登录页面
    @RequestMapping("/login")
    public String userLogin() {
        return "user/login";
    }
    
    // 显示注册页面
    @RequestMapping("/register")
    public String userRegister() {
        return "user/register";
    }
    
    //显示错误
    @RequestMapping("/error")
    public String error() {
        return "error";
    }
}
