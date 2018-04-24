package com.test;/*
 *ssm
 *@author yafeng
 *2018-4-19
 *下午4:29
 */

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args) {
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/spring-config.xml");
        Hello hello=(Hello)applicationContext.getBean("hello");
        hello.sayHello();
    }
}
