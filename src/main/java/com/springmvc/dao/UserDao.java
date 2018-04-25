package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-20
 *下午12:54
 */

import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
    * @return int
    * */
    public int register(User user);

    /*
    * user search the flower by flower name
    * @param String
    * @return List<Flower>
    * */
    public List<Flower> search_flower(String flower_name);

    /*
    * user update the personal information
    * @param user object
    * @return int
    * */
    public int updateInformation(User user);

    /*
    * user can buy the flower after paying for
    * @param Flower object
    * @return int
    * */
    public int buy_flower(Flower flower);

    /*
    * user can add the flower into shop car
    * @param Flower
    * @return int
    * */
    public int add_into_shop_car(User flower);

    /*
    * user can delete the flower from shop car
    * @param Flower object
    * @return int
    * */
    public int delete_from_shop_car(Flower flower);

    /*
    * user can look his shop car
    * @param user_id
    * @return the user's shop_car information
    * */
    public List<Flower> look_shop_car(int user_id);

}
