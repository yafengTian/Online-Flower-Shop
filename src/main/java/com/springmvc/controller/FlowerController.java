package com.springmvc.controller;/*
 *ssm
 *@author yafeng
 *2018-4-27
 *下午2:27
 */

import com.springmvc.pojo.Flower;
import com.springmvc.pojo.User;
import com.springmvc.service.Interface.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class FlowerController {
    @Autowired
    private FlowerService flowerService;

    @RequestMapping("/Detail/{flower_id}")
    public ModelAndView detail(@PathVariable String flower_id) {
        ModelAndView modelAndView = new ModelAndView();
        int id = 0;//flower id
        if (flower_id != null &&flower_id != "") {
            id = Integer.parseInt(flower_id);
        }
        modelAndView.setViewName("detail");
        Flower flower = flowerService.findFlowerById(id);
        modelAndView.addObject("flower", flower);
        return modelAndView;
    }

    @RequestMapping("/ShopList/{flower_id}")
    public ModelAndView shop_list(@PathVariable String flower_id, HttpSession session,
                                  HttpServletResponse respons, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        int id = 0;//flower id
        if (flower_id != null && flower_id != "") {
            id = Integer.parseInt(flower_id);
        }
        if (session.getAttribute("user") != null) {
            modelAndView.setViewName("shop_list");
            Flower flower = flowerService.findFlowerById(id);
            modelAndView.addObject("flower", flower);
            return modelAndView;
        } else {
            modelAndView.setViewName("login");
            return modelAndView;
        }
    }
    @RequestMapping("/UserPage")
    public ModelAndView userpage(HttpSession session){
        User user= (User) session.getAttribute("user");
        ModelAndView modelAndView=new ModelAndView();

        if(user!=null){
            modelAndView.setViewName("userpage");
            List<Flower> flowers=flowerService.showAllFlower();
            modelAndView.addObject("flowers",flowers);
            return modelAndView;
        }
        else {
            modelAndView.setViewName("login");
            return modelAndView;
        }

    }
    @RequestMapping("/AddCar/{flower_id}")
    public String addcar(@PathVariable String flower_id,HttpSession session){
       // ModelAndView modelAndView=new ModelAndView();
        int userId=0;
        if(session.getAttribute("user")!=null){
            User user=(User)session.getAttribute("user");
            userId=user.getId();
        int flowerId=0;
        if(flower_id!=null&&flower_id!=""&&userId!=0){
            flowerId=Integer.parseInt(flower_id);
            flowerService.addShopCar(userId,flowerId);
                //modelAndView.addObject("message","添加成功");
                //modelAndView.setViewName("/UserPage");
                return "redirect:/UserPage";

        }else{
           // modelAndView.addObject("message","请选择要添加的花");
            //modelAndView.setViewName("/UserPage");
            return "redirect:/UserPage";
        }
        }else{
            //modelAndView.addObject("message","请先登录");
           // modelAndView.setViewName("login");
            return "login";
        }

    }
    @RequestMapping("/ShowFlowerFromCar")
    public ModelAndView showcar(HttpSession session){
        User user=(User)session.getAttribute("user");
        ModelAndView modelAndView=new ModelAndView();
        if(user!=null){
            int userId=user.getId();
            List<Flower> flowers=flowerService.showFlowerFromCar(userId);
            modelAndView.addObject("flowers",flowers);
            modelAndView.setViewName("car");
            return  modelAndView;
        }else {
            modelAndView.setViewName("login");
            modelAndView.addObject("message","你还未登录,请先登录");
        }
        return modelAndView;
    }
    @RequestMapping("/Buy")
    public ModelAndView buy(String flower_id,String address,String flower_price,String number,HttpSession session,HttpServletRequest request){
        //int flower_id,String address,double all_money,int number,
        int flowerId=0;
        double total_money=0;
        int count=0;
        double price=0;
        if(flower_id!=null){
            flowerId=Integer.parseInt(flower_id);
        }
        if(flower_price!=null){
            price=Double.parseDouble(flower_price);
        }
        if(number!=null||number!=""){
            count=Integer.parseInt(number);
            total_money=count*price;
        }

        User user=(User) session.getAttribute("user");
        ModelAndView modelAndView=new ModelAndView();
        if(user!=null){
            Date d=new Date();
            java.sql.Date date=new java.sql.Date(d.getTime());
            flowerService.createShopList(user.getId(),flowerId,address,total_money,count,date);

                modelAndView.setViewName("success");
                modelAndView.addObject("message","购买成功");
                modelAndView.addObject("total_money",total_money);
                modelAndView.addObject("address",address);
                return modelAndView;
        }
        modelAndView.addObject("message","购买失败");
        modelAndView.setViewName("success");
        return modelAndView;

    }
    @RequestMapping("/AllFlowers")
    public ModelAndView allflowers(){
        ModelAndView modelAndView=new ModelAndView();
        List<Flower> flowers= flowerService.showAllFlower();
        modelAndView.addObject("flowers",flowers);
        modelAndView.setViewName("allflower");
        return  modelAndView;
    }
    @RequestMapping("/DeleteFromCar/{flower_id}")
    public ModelAndView delete(@PathVariable String flower_id,HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        User user=(User)session.getAttribute("user");
        if(flower_id!=null&&flower_id!=""&&user!=null){
            int flowerId=Integer.parseInt(flower_id);
            int userId=user.getId();
            flowerService.delete(userId,flowerId);
            modelAndView.setViewName("car");
            modelAndView.addObject("message","删除成功");
            return modelAndView;
        }
        modelAndView.setViewName("car");
        modelAndView.addObject("message","删除失败");
        return modelAndView;
    }
    @RequestMapping("/ManagerFlower")
    public ModelAndView managerFlower(){
        ModelAndView modelAndView=new ModelAndView();
        List<Flower> flowers=flowerService.showAllFlower();
        modelAndView.setViewName("manager_flower");
        modelAndView.addObject("flowers",flowers);
        return modelAndView;
    }
}