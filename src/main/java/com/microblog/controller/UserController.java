package com.microblog.controller;

import com.microblog.domain.User;
import com.microblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    //用户注册
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String userRegister(User userRegister, HttpServletRequest request){
        User user = userRegister;

        if (user != null){
            try {
                String userName=user.getUserName();

                if (userService.getUserByUserName(userName)==null){
                    userService.addUser(user);

                    request.setAttribute("msg","注册成功！");
                    return "user/login";
                }else {
                    request.setAttribute("msg", "注册失败，用户名已被占用！");
                    return "user/register";
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return "error";

    }
}
