package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:17
 */

import com.springmvc.pojo.Admin;
import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface AdminDao {
    /*
    * admin login
    * */
    public Admin admin(Admin admin);

    /*
    * admin delete flower
    * */
    public void delete(int id);

    /*
    * admin add the flower
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
