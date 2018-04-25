<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link rel="icon" href="/images/2.jpg" type="image/x-inco"/>
    <link href="/css/loginstyle.css" rel="stylesheet" type="text/css">

</head>

<body class="login">

<div class="login_m">
    <div class="login_logo"><img src="/images/mylogo.jpg" width="196" height="46"></div>
    <div class="login_boder">
        <form action="/Login" method="post">
            <div class="login_padding">
                <h2>用户名</h2>
                <label>
                    <input type="text" id="username" name="user_id" class="txt_input txt_input2"placeholder="Your user Id">
                </label>
                <h2>密码</h2>
                <label>
                    <input type="password" name="password" id="userpwd" class="txt_input" placeholder="Password">
                </label>
                <p class="forgot"><a href="javascript:void(0);">忘记密码?</a></p>
                <div class="rem_sub">
                    <div class="rem_sub_l">
                        <input type="checkbox" name="checkbox" id="save_me">
                        <label>记住</label>
                    </div>
                    <label>
                        <input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
                    </label>
                </div>
            </div>
        </form>

    </div><!--login_boder end-->
</div><!--login_m end-->

<br />
<br />

<p align="center">@Copyright<a href="/view/user/login.jsp"></a>花枝招展<a href="/view/user/index.jsp" title="花枝招展" target="_blank"></a></p>

</body>
</html>