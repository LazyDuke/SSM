package com.microblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {
	
	//显示主页
	@RequestMapping("/")
    public String index(HttpSession session) {
        if(session.getAttribute("user")!=null){
            return "redirect:/main";
        }
        return "index";
    }

    //显示个人首页
    @RequestMapping("/main")
    public String main(HttpSession session) {
        if (session.getAttribute("user")==null){
            return "redirect:/";
        }
	    return "main";
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
