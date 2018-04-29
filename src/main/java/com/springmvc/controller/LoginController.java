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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        System.out.println(flowers.toString());
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
    public String login(User user, HttpServletRequest request, HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        if(user!=null) {
            User user2 = userService.userLogin(user.getUser_id(), user.getPassword());
           //登录成功
            if (user2 != null) {
                session.setAttribute("user",user2);
                request.getSession().setAttribute("users",user2);
                //modelAndView.addObject("user", user2);
                //modelAndView.setViewName("/UserPage");
                //return modelAndView;
                return "redirect:/UserPage";
            }
        }
       // return modelAndView;
        return "login";
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
    @RequestMapping("/Car")
    public ModelAndView car(HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        if(session.getAttribute("user")!=null){
            modelAndView.setViewName("car");
            return modelAndView;
        }else{
            modelAndView.setViewName("login");
            return modelAndView;
        }

    }
    @RequestMapping("/BuyFromCar")
    public ModelAndView buyFromCar(String []flower_id,HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        User user=(User)session.getAttribute("user");
        if(flower_id!=null&&user!=null){
            int userId=user.getId();
            for(String id:flower_id){
                if(id!=null&&id!=""){
                    int flowerId=Integer.parseInt(id);
                    int success=flowerService.buy(userId,flowerId);
                }
            }
            modelAndView.addObject("message","购买成功");
            modelAndView.setViewName("userpage");
        }else if(user==null){
            modelAndView.setViewName("login");
            modelAndView.addObject("message","未登录,请先登录!");
            return modelAndView;
        }else {
            modelAndView.addObject("message","购买失败");
            modelAndView.setViewName("car");
            return modelAndView;
        }
    return modelAndView;
    }
}
