package com.springmvc.service.impl;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:18
 */

import com.springmvc.dao.AdminDao;
import com.springmvc.pojo.Admin;
import com.springmvc.service.Interface.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
    private AdminDao adminDao;
    @Autowired
    public AdminServiceImpl(AdminDao adminDao){
        this.adminDao=adminDao;
    }
    public Admin admin(Admin admin) {
        return adminDao.admin(admin);
    }
}
