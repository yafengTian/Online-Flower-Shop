package com.springmvc.controller;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午11:25
 */

import com.springmvc.pojo.User;
import com.springmvc.service.Interface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    /*
    * user login
    * @param user
    * @return String
    * */
    @RequestMapping("/Login")
    public ModelAndView login(User user, RedirectAttributes redirectAttributes){
        ModelAndView modelAndView = new ModelAndView();
        if(user!=null) {
            User user2 = userService.userLogin(user.getUser_id(), user.getPassword());
           //登录成功
            if (user2 != null) {
                modelAndView.addObject("user", user2);
                modelAndView.setViewName("userpage");
                return modelAndView;
            }
        }
        return modelAndView;
    }
    @RequestMapping("/Test")
    public String test(){
        return "test";

    }
    @RequestMapping("/Register")
    public String register(User user){
        if(user!=null){
            userService.userRegister(user);
            System.out.println(user.getId());
        }
        return "login";
    }
}
