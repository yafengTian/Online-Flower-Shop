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
}
