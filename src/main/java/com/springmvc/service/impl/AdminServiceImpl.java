package com.springmvc.service.impl;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:18
 */

import com.springmvc.dao.AdminDao;
import com.springmvc.pojo.Admin;
import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import com.springmvc.service.Interface.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    /*
    *
    * admin delete flower
    * */
    public void delete(int id) {
        adminDao.delete(id);
    }

    /*
    * admin add flower
    * */
    public void add(Flower flower){
        adminDao.add(flower);
    }

    public List<User> showAllUsers() {
        return adminDao.showAllUsers();
    }

    public void deleteUser(int user_id) {
        adminDao.deleteUser(user_id);
    }
}
