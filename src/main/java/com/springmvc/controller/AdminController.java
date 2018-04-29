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
        if(flower!=null){
            adminService.add(flower);
            modelAndView.setViewName("manager_flower");
            modelAndView.addObject("message","添加成功");
            return modelAndView;
        }
        modelAndView.setViewName("add");
        modelAndView.addObject("message","添加失败");
        return modelAndView;


    }

}
