package com.springmvc.service.impl;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:57
 */

import com.springmvc.dao.FlowerDao;
import com.springmvc.pojo.Flower;
import com.springmvc.service.Interface.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;
@Component
@Service
public class FlowerServiceImpl implements FlowerService {
    private FlowerDao flowerDao;
    @Autowired
    public FlowerServiceImpl(FlowerDao flowerDao){
        this.flowerDao=flowerDao;
    }
    public List<Flower> showAllFlower() {
        return flowerDao.showAllFlowers();
    }

    public Flower findFlowerById(int id) {
        return flowerDao.findFlowerById(id);
    }

    public int createShopList(int userId, int flower_id, String address, double total_money, int count, Date date) {
        return flowerDao.createShopList(userId,flower_id,address,total_money,count,date);
    }

    public int addShopCar(int userId, int flowerId) {
        flowerDao.addShopCar(userId,flowerId);
        return 0;
    }

    public List<Flower> showFlowerFromCar(int userId) {
        List<Flower> flowers=flowerDao.showFlowerFromCar(userId);
        return flowers;
    }

    public int buy(int userId, int flowerId) {
       return flowerDao.buy(userId,flowerId);

    }

    public void delete(int userId, int flowerId) {
        flowerDao.delete(userId,flowerId);
    }
}
