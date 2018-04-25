package com.springmvc.dao;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:17
 */

import com.springmvc.pojo.Admin;
import org.springframework.stereotype.Component;

@Component
public interface AdminDao {
    public Admin admin(Admin admin);
}
