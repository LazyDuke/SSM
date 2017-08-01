package com.microblog.controller;

import com.microblog.domain.User;
import com.microblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

                    request.setAttribute("msg",2);
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

    //用户登录
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String userLogin(User loginUser, HttpServletRequest request, RedirectAttributes redirectAttributes){
        User user = userService.getUserByUserName(loginUser.getUserName());
        String password="";

        if (user!=null){
            password=userService.getPassword(user.getUserName());
            if (loginUser.getUserPassword().equals(password)){
                request.getSession().setAttribute("user", user);;
                redirectAttributes.addFlashAttribute("msg", 0);
                return "redirect:/main";
            }else {
                request.setAttribute("msg", 1);
                return "user/login";
            }
        }else {
            request.setAttribute("msg", 0);
            return "user/login";
        }
    }

    // 用户注销
    @RequestMapping("/logout")
    public String loginOut(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        request.getSession().removeAttribute("user");
        redirectAttributes.addFlashAttribute("msg", 0);
        return "redirect:/";
    }

    //用户主页
    @RequestMapping("/mainPage")
    public String mainPage() {
        return "user/personalPage";
    }
}
