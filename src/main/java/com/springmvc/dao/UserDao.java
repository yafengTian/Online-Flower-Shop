package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-20
 *下午12:54
 */

import com.springmvc.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    /*
    * user login
    * @param user_id,password
    * @return user object
    * */
    public User login(@Param("user_id") long user_id, @Param("password") String password);

    /*
    * user register
    * @param user object
    * @return boolean
    * */
    public int register(User user);

}
