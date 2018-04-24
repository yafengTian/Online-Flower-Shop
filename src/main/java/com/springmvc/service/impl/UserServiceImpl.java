package com.springmvc.service.impl;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午8:48
 */

import com.springmvc.dao.UserDao;
import com.springmvc.pojo.User;
import com.springmvc.service.Interface.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;

@Component
@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;
    @Autowired
    public UserServiceImpl(UserDao userDao)  {
    this.userDao=userDao;
    }

    /*
    * @:CRUD无需再提交,回滚
    * */
    @Transactional
    public User userLogin(long user_id, String password)
    {
        return userDao.login(user_id,password);
    }

    /*
    * user register
    * */
    @Transactional
    public int userRegister(User user){
        return userDao.register(user);
    }
    /*@Test
    public void test_02(){
        java.util.Date d=new java.util.Date();
        Date date=new Date(d.getTime());
        User user=new User(10086,"yafeng","tyf0920","boy",21,date);
        userDao.register(user);
        System.out.println(user.getId());
    }*/
}
