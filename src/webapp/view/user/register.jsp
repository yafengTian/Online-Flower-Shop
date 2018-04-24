<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-23
  Time: 下午10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<form action="/Register" method="post">
    <input type="text" name="user_id" class="name" placeholder="" required="">
    <input type="password" name="password" class="password" placeholder="" required="">
    <input type="text" name="user_name" class="password" placeholder="" required="">
    <input type="text" name="sex" class="password" placeholder="" required="">
    <input type="text" name="age" class="password" placeholder="" required="">
    <input type="date" name="birthday" class="password" placeholder="" required="">

    <input type="submit" class="login" value="Login">
</form>
</body>
</html>
