package com.springmvc.controller;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午11:25
 */

import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import com.springmvc.service.Interface.FlowerService;
import com.springmvc.service.Interface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private FlowerService flowerService;
    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView();
        List<Flower> flowers;
       flowers=flowerService.showAllFlower();
       modelAndView.addObject("flowers",flowers);
       modelAndView.setViewName("index");
        return modelAndView;
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

    @RequestMapping("/Register")
    public String register(User user){
        if(user!=null){
            userService.userRegister(user);
            System.out.println(user.getId());
            return "login";
        }
        return "register";
    }
}
