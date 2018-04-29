package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:51
 */

import com.springmvc.pojo.Flower;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.util.List;
@Component
public interface FlowerDao {
    /*
    * show all flower to index
    * @return List<Flower>
    * */
    public List<Flower> showAllFlowers();

    /*
    * search a flower  by flower id
    * @return flower object
    * */
    public Flower findFlowerById(int id);

    /*
    * create shop list
    * */
    public int createShopList(@Param("userId") int userId, @Param("flower_id") int flower_id, @Param("address")
            String address, @Param("total_money") double total_money,@Param("count")int count,
                              @Param("date") Date date);

    /*
    * add the flower into shop car
    * */
    public int addShopCar(@Param("userId") int userId,@Param("flowerId") int flowerId);
    /*
    * show the flower which don's buy from shop car
    * */
    public List<Flower> showFlowerFromCar(@Param("userId") int userId);
    /*
    * user buy from shop car
    * */
    public int buy(@Param("userId") int userId,@Param("flowerId") int flowerId);

    /*
    * delete flower from shop car
    * */
    public void delete(@Param("userId") int userId,@Param("flowerId") int flowerId);
}
