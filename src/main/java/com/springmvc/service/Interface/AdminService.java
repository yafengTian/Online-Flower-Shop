package com.springmvc.service.Interface;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:18
 */


import com.springmvc.pojo.Admin;
import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;

import java.util.List;

public interface AdminService {
    public Admin admin(Admin admin);
    /*
    * admin delete flower
    * */
    public void delete(int id);

    /*
    * admin add flower
    * */
    public void add(Flower flower);

    /*
    * show all users
    * */
    public List<User> showAllUsers();

    /*
    * delete user
    * */
    public void deleteUser(int user_id);
}
