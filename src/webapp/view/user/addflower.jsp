<%@ page import="java.util.List" %>
<%@ page import="com.springmvc.pojo.Flower" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-29
  Time: 下午7:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="/css/amazeui.min.css" />
    <link rel="stylesheet" href="/css/admin.css" />
</head>

<body>
<%
    List<Flower> allflower=new ArrayList<>();
%>

<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">产品管理</strong><small></small></div>
    </div>

    <hr>
    <form method="post" action="/AddFlower">
        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
                <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                        <input type="submit" style="height: 40px;width:60px;border-radius: 5px;background-color: #0a6999" class="am-btn am-btn-default" value="保存"/>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
            <tr><span style="width: 60px;height: 50px">花名</span></tr>
            <tr><input type="text" name="flower_name" style="width: 700px;height: 40px;border-radius: 5px"/></tr><br><br>
            <tr><span style="width: 60px;height: 50px">分类</span></tr>
            <tr><select name="catagory" id="catagory" style="height: 40px;width:700px ">
                <option value="1" >鲜花</option>
                <option value="2" >鲜花</option>
                <option value="3" >鲜花</option>
            </select></tr><br><br>
            <tr><span style="width: 60px;height: 50px">价格</span></tr>
            <tr><input type="text" name="price" style="width: 700px;height: 40px;border-radius: 5px"/></tr><br><br>

            <tr><span style="width: 60px;height: 50px">介绍</span></tr>
        <tr>
            <td><textarea name="description" style="width: 700px;height: 100px"></textarea></td><br><br>
        </tr>

    </form>
</div>
</body>
</html>