package com.springmvc.controller;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:16
 */

import com.springmvc.pojo.Admin;
import com.springmvc.service.Interface.AdminService;
import com.springmvc.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AdminController {
    @Autowired
    private AdminServiceImpl adminService;
    @RequestMapping("/Admin")
    public String admin(Admin admin){
        Admin success=adminService.admin(admin);
        if(success!=null){//登录成功
            return "login";
        }
        else return "index";
    }

}
