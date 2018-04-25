<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link rel="icon" href="/images/2.jpg" type="image/x-inco"/>
<style type="text/css">
    /*------------// Overall //------------------*/
    body{font:12px/180% Arial,Helvetica,Verdana;color:#5a5a5a; margin:0; background:#FFF;}
    body.login{ background:url(/images/login_bgx.gif);}
    table,td{font:12px/180% Arial, "宋体",Helvetica, sans-serif,Verdana; color:#58595b;}
    table{border-collapse:collapse; border-spacing:0; empty-cells:show; }
    th, td { border-collapse:collapse; }
    A:link{text-decoration:none; color:#58595b;}
    A:visited{text-decoration:none; color:#58595b;}
    A:hover{text-decoration:none; color:#206fd5;}
    img{ border:0; }
    div,p,img,ul,li,form,input,label,span,dl,dt,dd,h1,h2,h3,h4,h5,h6{margin:0;padding:0;}
    input[type="reset"]::-moz-focus-inner, input[type="button"]::-moz-focus-inner, input[type="submit"]::-moz-focus-inner, input[type="file"] > input[type="button"]::-moz-focus-inner{   border:none;padding:0 }
    ol,ul,li{list-style-type:none;}
    .overz{ overflow:auto; zoom:1; overflow-x:hidden; overflow-y:hidden;}
    .dspn{ display:none;}
    a{blr:expression(this.onFocus=this.blur())} /*for IE*/
    a{outline:none;} /*for Firefox*/
    html{-webkit-text-size-adjust:none;}

    /*--login--*/
    .login_m{ width:403px; margin:0 auto; height:575px; /*position: absolute;left:50%;top:50%;margin-left:-202px;margin-top:-188px;*/}
    .login_logo{ text-align:center; margin-bottom:25px;}
    .login_boder{ background: url(/images/login3.png) no-repeat; height:542px; overflow:hidden;}
    .login_padding{ padding:28px 47px 20px 47px ;}
    .login_boder h2{ color:#4f5d80; text-transform:uppercase; font-size:12px; font-weight:normal; margin-bottom:11px;}
    .forget_model_h2{color:#4f5d80; font-size:12px; font-weight:normal; margin-bottom:5px;}

    .login_boder input.txt_input{ width:295px; height:26px; border:1px solid #cad2db; background:url(/images/txt_input_bg.gif) no-repeat;  padding:0 5px; -moz-border-radius:5px; -webkit-border-radius:5px; border-radius:5px; line-height:36px; margin-bottom:10px; font-size:14px; color:#717171; font-family:Arial;}
    .login_boder input.txt_input2{ margin-bottom:20px;}
    .login_boder input.txt_input:focus{ transition:border linear .2s,box-shadow linear .2s; -moz-transition:border linear .2s,-moz-box-shadow linear .2s; -webkit-transition:border linear .2s,-webkit-box-shadow linear .2s; outline:none;border-color:rgba(173,173,173.75); box-shadow:0 0 8px rgba(173,173,173,.5); -moz-box-shadow:0 0 8px rgba(173,173,173,.5); -webkit-box-shadow:0 0 8px rgba(173,173,173,3); border:1px solid #6192c8;}
    .login_boder p.forgot{ font-size:11px;  text-align:right; margin-bottom:15px;}
    .login_boder p.forgot a,.login_boder p.forgot a:visited{color:#8c8e91;}
    .login_boder p.forgot a:hover{color:#206fd5;}
    .rem_sub input.sub_button{ float:right; width:122px; height:32px; background:url(/images/site_bg.png) no-repeat -153px -850px; border:none; color:#FFF; padding-bottom:2px; font-size:14px; font-weight:bold;}

    .rem_sub input.sub_buttons{ float:left; width:122px;  height:32px; background:url(/images/site_bg.png) no-repeat -153px -850px; border:none; color:#FFF; padding-bottom:2px; font-size:14px; font-weight:bold;}
    .rem_sub input.sub_buttons:hover{ background-position:-153px -882px; cursor:pointer;}

    .rem_sub input.sub_button:hover{ background-position:-153px -882px; cursor:pointer;}
    .rem_sub .rem_sub_l{ float:left; font-size:12px; height:33px; line-height:33px;}
    .rem_sub input#checkbox{ margin-right:5px; vertical-align:middle;}
</style>
</head>

<body class="login">

<div class="login_m">
    <div class="login_boder">
        <form action="/Register" method="post" >
            <div class="login_padding">
                <h2>用户帐号</h2>
                <label>
                    <input type="text" id="user_id" name="user_id" class="txt_input txt_input2"placeholder="Your user Id">
                </label>
                <h2>用户名</h2>
                <label>
                    <input type="text" name="user_name" id="user_name" class="txt_input" placeholder="User name">
                </label>
                <h2>密码</h2>
                <label>
                    <input type="password" id="password" name="password" class="txt_input txt_input2"placeholder="Password">
                </label>
                <h2>性别</h2>
                <label>
                    <input type="radio" id="woman" name="sex">男
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" id="man" name="sex">女
                </label>
                <h2>年龄</h2>
                <label>
                    <input type="text" id="age" name="age" class="txt_input txt_input2"placeholder="Your age">
                </label>
                <h2>生日</h2>
                <label>
                    <input type="date" id="birthday" name="birthday" class="txt_input txt_input2"placeholder="Your birthday">
                </label>
                <div class="rem_sub">
                    <label>
                        <input type="submit" class="sub_button" name="button" id="button"
                               value="注册" style="opacity: 0.7;" onchange="check_password()">
                    </label>
                </div>
            </div>
        </form>

    </div><!--login_boder end-->
</div><!--login_m end-->

<br />
<br />

<p align="center">@Copyright<a href="/view/user/login.jsp"></a>花枝招展<a href="/view/user/index.jsp" title="花枝招展" target="_blank"></a></p>
<script type="text/javascript">
</script>
</body>
</html>