<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-20
  Time: 下午11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <link rel="icon" href="/images/2.jpg" type="image/x-icon">
    <link rel="stylesheet" href="../../css/style.css">

    <!--<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
-->
    <!-- For-Mobile-Apps-and-Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Simple Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //For-Mobile-Apps-and-Meta-Tags -->
    <link type="text/css" rel="stylesheet" href="/css/login_style.css">
</head>

<body>
<h1>欢迎来到 花枝招展 花店</h1>
<div class="container w3">
    <h2>用户登录</h2>
    <form action="/Login" method="post">
        <div class="username">
            <span class="username" style="height:19px">用户:</span>
            <input type="text" name="user_id" class="name" placeholder="" required="">
            <div class="clear"></div>
        </div>
        <div class="password-agileits">
            <span class="username"style="height:19px">密码:</span>
            <input type="password" name="password" class="password" placeholder="" required="">
            <div class="clear"></div>
        </div>
        <div class="rem-for-agile">
            <input type="checkbox" name="remember" class="remember">记得我
            　　
            <br>
            <a href="#">忘记了密码</a><br>
        </div>
        <div class="login-w3">
            <input type="submit" class="login" value="Login">
        </div>
        <div class="clear"></div>
    </form>
</div>
<div class="footer-w3l">
    <p> 花枝招展 Flower-Store @Copyright 田亚峰</p>
</div>
</body>
</html>
