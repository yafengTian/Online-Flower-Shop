<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-28
  Time: 下午8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>花枝招展</title>
    <link rel="icon" href="/images/2.jpg" type="image/icon-x">
</head>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>锡货超市</title>
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="css/buyConfirm.css" />
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/unslider.min.js" type="text/javascript"></script>
    <script src="js/index.js" type="text/javascript"></script>
    <script type="text/javascript">

        window.onload = function(){
            new tab('test4-input-input_tab1-input_tab2', '-');
        }
        function tab(o, s, cb, ev){ //tab换类
            var $ = function(o){return document.getElementById(o)};
            var css = o.split((s||'_'));
            if(css.length!=4)return;
            this.event = ev || 'onclick';
            o = $(o);
            if(o){
                this.ITEM = [];
                o.id = css[0];
                var item = o.getElementsByTagName(css[1]);
                var j=1;
                for(var i=0;i<item.length;i++){
                    if(item[i].className.indexOf(css[2])>=0 || item[i].className.indexOf(css[3])>=0){
                        if(item[i].className == css[2])o['cur'] = item[i];
                        item[i].callBack = cb||function(){};
                        item[i]['css'] = css;
                        item[i]['link'] = o;
                        this.ITEM[j] = item[i];
                        item[i]['Index'] = j++;
                        item[i][this.event] = this.ACTIVE;
                    }
                }
                return o;
            }
        }
        tab.prototype = {
            ACTIVE:function(){
                var $ = function(o){return document.getElementById(o)};
                this['link']['cur'].className = this['css'][3];
                this.className = this['css'][2];
                try{
                    $(this['link']['id']+'_'+this['link']['cur']['Index']).style.display = 'none';
                    $(this['link']['id']+'_'+this['Index']).style.display = 'block';
                }catch(e){}
                this.callBack.call(this);
                this['link']['cur'] = this;
            }
        }
    </script>
</head>

<body>
<!--顶部快捷菜单-->
<div class="shortcut_v2013 alink_v2013">
    <div class="w">
        <ul class="fl 1h">
            <li class="fl">
                <div class="menu">
                    <div class="menu_hd">
                        <a href="#">
                            <img src="/images/top_phone_icon.png" width="12px" height="16px" />
                            手机锡货
                        </a>
                        <b><em></em></b></div>
                    <div class="menu_bd">
                        <ul>
                            <li><a href="#">App For Android</a></li>
                            <li><a href="#">App For IOS</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd">您好，欢迎来到花枝招展！</div></li>
            <li class="fl"><div class="menu_hd"><a href="#"><%=session.getAttribute("user")==null?("未登录"):("已登录")%></a></div></li>
            <li class="fl"><div class="menu_hd"><a href="#">免费注册</a></div></li>
        </ul>
        <ul class="fr 1h">
            <li class="fl"><div class="menu_hd"><a href="#">我的订单</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd"><a href="#">服务中心</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd"><a href="#">商家入驻</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl">
                <div class="menu">
                    <div class="menu_hd"><a href="#">网站导航</a><b><em></em></b></div>
                    <div class="menu_bd">
                        <ul>
                            <li><a href="#">网站导航</a></li>
                            <li><a href="#">网站导航</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
        <span class="clr"></span>
    </div>
</div>
<!--顶部快捷菜单-->


<!--顶部Logo及搜索-->
<div class="header_2013">
    <div class="w">
        <div class="logo_v2013">
            <a href="#">
                <img class="border_r" src="/images/logo.jpg" width="120" height="50">
                <img src="/images/slogan.jpg" width="170" height="50">
            </a>
        </div>
        <div class="header_searchbox">
            <form action="#">
                <input name="search" type="text" class="header_search_input" default_val="花枝招展全场五折" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" lang="zh">
                <button type="submit" class="header_search_btn">搜索</button>
            </form>
            <ul class="hot_word">
                <li><a class="red" href="#" target="_blank">百合</a></li>
                <li><a target="_blank" href="#">玫瑰</a></li>
                <li><a target="_blank" href="#">郁金香</a></li>
            </ul>
        </div>
        <div id="cart_box" class="cart_box">
            <a id="cart" class="cart_link" href="#" rel="nofollow">
                <span class="text">去购物车结算</span>
                <img src="/images/shopping_icon.png" width="24" height="24" class="cart_gif">

                <!-- 购物车没有物品时，隐藏此num -->
                <span class="num">2</span>
                <s class="icon_arrow_right"></s>
            </a>
        </div>
        <span class="clr"></span>
    </div>
</div>
<!--顶部Logo及搜索-->

<!--  导航条    start-->
<div class="yHeader">
    <div class="shop_Nav">
        <div class="pullDown">
            <h2 class="pullDownTitle"><i></i>全部商品分类</h2>
        </div>

        <ul class="Menu_box">
            <li><a href="" target="_blank" class="yMenua">首页</a></li>
            <li><a href="" target="_blank">大划算</a></li>
            <li><a href="" target="_blank">抢拍</a></li>
            <li><a href="" target="_blank">花枝招展</a></li>
        </ul>
        <div class="fr r_icon"><i class="i01"></i><span>30天退货</span><i class="i02"></i><span>满59包邮</span></div>
    </div>
</div>
<!--  导航条    end-->


<div class="banner_red_top">


</div>


<!--订单提交body部分开始-->


<div class="border_top_cart">

    <div class="container payment-con">
        <form  target="_blank" action="#" id="pay-form" method="post">
            <div class="order-info">
                <div class="msg">
                    <h3>您的订单已提交成功！付款咯～</h3>
                    <h3 id="num"></h3><h3>秒返回首页</h3>
                    <p></p>

                    <p class="post-date">店家承诺，付款后7天发货</p>
                </div>
                <div class="info">
                    <p>
                        金额：<span class="pay-total">${total_money}元</span>
                    </p>
                    <p>
                        订单：1150505740045173                    </p>
                    <p>
                        配送：田亚峰                                    <span class="line">/</span>
                        13701006491                                    <span class="line">/</span>
                        ${address}                                                                <span class="line">/</span>
                        不限送货时间                                    <span class="line">/</span>
                        个人电子发票                                                    </p>
                </div>
                <div class="icon-box">
                    <i class="iconfont"><img src="/images/yes_ok.png"></i>
                </div>
            </div>

            <div class="xm-plain-box">
                <div class="box-ft clearfix">
                    <input type="submit" class="btn btn-primary" value="下一步" id="payBtn">
                    <a href="#" class="btn btn-lineDakeLight">修改订单</a>
                    <span class="tip"></span>
                </div>
            </div>
        </form>
    </div>

<script src="/js/base.min.js"></script>

<script type="text/javascript" src="/js/buyConfirm.js"></script>

</div>


<!--订单提交body部分结束-->



<div class="bottom-links">
    <ul class="clearfix cols">
        <li class="col">
            <div class="bottom-links-title">关于我们</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">招聘英才</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">合作洽谈</a></li>
                <li><a href="#">联系我们</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">客服中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">收货地址</a></li>
                <li><a href="#">个人资料</a></li>
                <li><a href="#">修改密码</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">售后服务</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">退换货政策</a></li>
                <li><a href="#">退款说明</a></li>
                <li><a href="#">联系卖家</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">帮助中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">FAQ</a></li>
                <li><a href="#">积分兑换</a></li>
                <li><a href="#">积分细则</a></li>
                <li><a href="#">已购商品</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">个人微信</div>
            <ul class="clearfix bottom-links-items">
                <li>
                    <img src="/images/123.jpg" />
                </li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">关注我们</div>
            <ul class="clearfix bottom-links-items">
                <li><img src="/images/icon_sina.png" /><a href="#">新浪微博</a></li>
                <li><img src="/images/icon_tencent.png" /><a href="#">腾讯微博</a></li>
                <li><img src="/images/icon_dou.png" /><a href="#">豆瓣小站</a></li>
                <li><img src="/images/weixin_big.jpg" /><a href="#">官方微信</a></li>
            </ul>
        </li>

    </ul>
</div>
<div class="footer_v2013 bottom-about">
    <div class="w">
        <p class="foot_p1">
            <a href="#">首页</a>|<a href="#">招聘英才</a>|<a href="#">广告合作</a>|<a href="#">联系我们</a>|<a href="#">关于我们</a>
        </p>
        <pre>
    </div>
</div>
<!-- 底部 -->
<div class="fixed-buttons">
    <ul>
        <li><a href="#" class="fixed-weixin"><img src="images/fixed_weixin.png" /><div class="weixin-pic"><img src="images/weixin_big.jpg"></div></a></li>
        <li><img id="imgBtn-to-top" src="images/back_top.png" /></li>
    </ul>
</div>
<script language="javascript" type="text/javascript">
    var i = 5;
    var intervalid;
    intervalid = setInterval("fun()", 1000);
    function fun() {
        if (i == 0) {
            window.location.href = "/UserPage";
            clearInterval(intervalid);
        }
        document.getElementById("num").innerHTML = i;
        i--;
    }
</script>
</body>
</html>