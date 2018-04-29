package com.springmvc.service.Interface;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:56
 */

import com.springmvc.pojo.Flower;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface  FlowerService {
    public List<Flower> showAllFlower();
    /*
    * find flower by id
    * @return flower object
    * */
    public Flower findFlowerById(int id);
    /*
    * create shop list
    * */
    public int createShopList(int userId,int flower_id,String address, double total_money,int count,Date date);

    /*
    * add the flower into shopcar
    * */
    public int addShopCar(int userId,int flowerId);
    /*
    * show flower from shop car
    * */
    public List<Flower> showFlowerFromCar(int userId);

    /*
    * buy flower from shop car
    * */
    public int buy(int userId,int flowerId);

    /*
    * delete from shop car
    * */
    public void delete(int userId,int flowerId);
}
