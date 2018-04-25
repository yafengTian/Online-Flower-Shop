package com.springmvc.pojo;/*
 *ssm
 *@author yafeng
 *2018-4-24
 *上午9:04
 * Flower POJO
 */

import org.springframework.stereotype.Component;

@Component
public class Flower {
    int id;
    String flower_name;
    String catagory;//花的种类
    String description;
    double price;
    public Flower(){}
    public Flower(int id, String flower_name, String catagory, String description, double price) {
        this.id = id;
        this.flower_name = flower_name;
        this.catagory = catagory;
        this.description = description;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFlower_name() {
        return flower_name;
    }

    public void setFlower_name(String flower_name) {
        this.flower_name = flower_name;
    }

    public String getCatagory() {
        return catagory;
    }

    public void setCatagory(String catagory) {
        this.catagory = catagory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Flower{" +
                "id=" + id +
                ", flower_name='" + flower_name + '\'' +
                ", catagory='" + catagory + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                '}';
    }
}
