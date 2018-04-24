package com.springmvc.pojo;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午8:22
 * POJO
 */

import org.springframework.stereotype.Component;
import java.sql.Date;
@Component
public class User {
    int id;
    long user_id;
    String user_name;
    String password;
    String sex;
    int age;
    Date birthday;
    public User(){}

    public User(long user_id, String user_name, String password, String sex, int age, Date birthday) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.birthday = birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday =birthday;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", date=" + birthday +
                '}';
    }
}
