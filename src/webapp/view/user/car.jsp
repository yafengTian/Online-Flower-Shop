<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-28
  Time: 下午11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/carts.css">
</head>
<body>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>



    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_c" class="shopChoice">
                <label for="shop_c" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">花枝招展</a>
            </div>
        </div>
        <div class="order_content">
            <%int i=0;%>
            <form method="post" action="/BuyFromCar">
            <c:forEach items="${flowers}" var="flower">
                <%i++;%>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_<%=i%>" class="son_check" name="flower_id" value="${flower.id}">
                    <label for="checkbox_<%=i%>"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="/images/1.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">${flower.flower_name}</a></div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥${flower.price}</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥${flower.price}</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="/DeleteFromCar/${flower.id}" class="delBtn" onblur="buy()">移除商品</a></p>
                </li>
            </ul>
            </c:forEach>

        </div>
    </div>
    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece"><a href="/UserPage">返回首页</a></div>
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:;"><input type="submit" value="结算" style="background: #ff4900;border: 0px"/></a></div>
        </div>
    </div>
    </form>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>

<script src="/js/jquery.min.js"></script>
<script src="/js/carts.js"></script>

</body>
<script>
    function buy() {
        alert(${message});
        return true;
    }
</script>
</html>