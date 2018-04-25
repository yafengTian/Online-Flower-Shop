package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:51
 */

import com.springmvc.pojo.Flower;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public interface FlowerDao {
    /*
    * show all flower to index
    * @return List<Flower>
    * */
    public List<Flower> showAllFlowers();
}
