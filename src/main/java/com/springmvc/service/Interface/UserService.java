package com.springmvc.service.Interface;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午8:46
 * 用户service层接口
 */

import com.springmvc.pojo.User;
public interface UserService {
    /*
    * user login
    * */
    public User userLogin(long user_id,String password);

    /*
    * user register
    * */
    public int userRegister(User user);
}
