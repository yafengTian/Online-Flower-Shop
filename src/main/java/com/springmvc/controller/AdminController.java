package com.springmvc.controller;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:16
 */

import com.springmvc.pojo.Admin;
import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import com.springmvc.service.Interface.AdminService;
import com.springmvc.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class AdminController {
    @Autowired
    private AdminServiceImpl adminService;
    @RequestMapping("/Admin")
    public String admin(Admin admin){
        Admin success=adminService.admin(admin);
        if(success!=null){//登录成功
            return "back";
        }
        else return "admin";
    }
    @RequestMapping("/DeleteFlower/{flower_id}")
    public String deleteFlower(@PathVariable String flower_id){
        if(flower_id!=null&&flower_id!=""){
            int id=Integer.parseInt(flower_id);
            adminService.delete(id);
            return "manager_flower";
        }
        return "back";
    }
    @RequestMapping("/AddFlower")
    public ModelAndView add(Flower flower){
        ModelAndView modelAndView=new ModelAndView();
        System.out.println(flower);
        if(flower!=null){
            System.out.println(flower.getFlower_name()+"  "+flower.getDescription()+"  "+flower.getCatagory());
            adminService.add(flower);
            modelAndView.setViewName("manager_flower");
            modelAndView.addObject("message","添加成功");
            return modelAndView;
        }
        modelAndView.setViewName("add");
        modelAndView.addObject("message","添加失败");
        return modelAndView;
    }
    @RequestMapping("/ShowAllUsers")
    public ModelAndView showAllUsers(){
        ModelAndView modelAndView=new ModelAndView();
        List<User> users=adminService.showAllUsers();
            modelAndView.addObject("users",users);
            modelAndView.setViewName("manager_user");
            return modelAndView;
    }
    @RequestMapping("/DeleteUser/{user_id}")
    public String deleteUser(@PathVariable String user_id){
        if(user_id!=null){
            int id=Integer.parseInt(user_id);
            adminService.deleteUser(id);
            System.out.println(id);
            return "manager_user";
        }
        return "manager_user";
    }

}
