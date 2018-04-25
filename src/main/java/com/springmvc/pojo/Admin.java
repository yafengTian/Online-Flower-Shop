package com.springmvc.pojo;/*
 *ssm
 *@author yafeng
 *2018-4-25
 *下午9:14
 */

import org.springframework.stereotype.Component;

@Component
public class Admin {
    int id;
    long admin_id;
    String password;
    public Admin(){}
    public Admin(int id, long admin_id, String password) {
        this.id = id;
        this.admin_id = admin_id;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(long admin_id) {
        this.admin_id = admin_id;
    }

    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", admin_id=" + admin_id +
                ", password='" + password + '\'' +
                '}';
    }
}
