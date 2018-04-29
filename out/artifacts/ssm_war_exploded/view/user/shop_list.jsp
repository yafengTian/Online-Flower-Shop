<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-27
  Time: 下午3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>花枝招展</title>
    <link href="/css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/css/base.css"/>
    <script type="text/javascript" src="/js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/checkOut.css" />
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
                <span class="text"><a href="/ShowFlowerFromCar">去购物车结算</a></span>
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


<!--收货地址body部分开始-->
<div class="border_top_cart">
    <div class="container">
        <div class="checkout-box">
                <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                    <input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-bd">

                            <input type="hidden" name="newAddress[type]" id="newType" value="common">
                            <input type="hidden" name="newAddress[consignee]" id="newConsignee">
                            <input type="hidden" name="newAddress[province]" id="newProvince">
                            <input type="hidden" name="newAddress[city]" id="newCity">
                            <input type="hidden" name="newAddress[district]" id="newCounty">
                            <input type="hidden" name="newAddress[address]" id="newStreet">
                            <input type="hidden" name="newAddress[zipcode]" id="newZipcode">
                            <input type="hidden" name="newAddress[tel]" id="newTel">
                            <input type="hidden" name="newAddress[tag_name]" id="newTag">
                            <!--点击弹出新增/收货地址界面start-->
                        </div>
                        <!-- 收货地址 END-->
                        <div id="checkoutPayment">
                            <!-- 支付方式 -->
                            <div class="xm-box">
                                <div class="box-hd ">
                                    <h2 class="title">支付方式</h2>
                                </div>
                                <div class="box-bd">
                                    <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                        <li class="item selected">
                                            <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                                            <p>
                                                在线支付                                <span></span>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 支付方式 END-->
                            <div class="xm-box">
                                <div class="box-hd ">
                                    <h2 class="title">配送方式</h2>
                                </div>
                                <div class="box-bd">
                                    <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                        <li class="item selected">
                                            <input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
                                            <p>
                                                快递配送（免运费）                                <span></span>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                        </div>
                        <!-- 送货时间 -->
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">送货时间</h2>
                            </div>
                            <div class="box-bd">
                                <ul class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected"><input type="radio" checked="checked" name="Checkout[best_time]" value="1"><p>不限送货时间<span>周一至周日</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="2"><p>工作日送货<span>周一至周五</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="3"><p>双休日、假日送货<span>周六至周日</span></p></li>                        </ul>
                            </div>
                        </div>
                        <!-- 送货时间 END-->
                        <!-- 发票信息 -->
                        <div id="checkoutInvoice">
                            <div class="xm-box">
                                <div class="box-hd">
                                    <h2 class="title">发票信息</h2>
                                </div>
                                <div class="box-bd">
                                    <ul class="checkout-option-list checkout-option-invoice clearfix J_optionList J_optionInvoice">
                                        <li class="hide">
                                            电子个人发票4
                                        </li>
                                        <li class="item selected">
                                            <!--<label><input type="radio"  class="needInvoice" value="0" name="Checkout[invoice]">不开发票</label>-->
                                            <input type="radio"    checked="checked"  value="4" name="Checkout[invoice]">
                                            <p>电子发票（非纸质）</p>
                                        </li>
                                        <li class="item ">
                                            <input type="radio"   value="1" name="Checkout[invoice]">
                                            <p>普通发票（纸质）</p>
                                        </li>
                                    </ul>
                                    <p id="eInvoiceTip" class="e-invoice-tip ">
                                        电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a>
                                    </p>
                                    <div class="invoice-info nvoice-info-1" id="checkoutInvoiceElectronic" style="display:none;">

                                        <p class="tip">电子发票目前仅对个人用户开具，不可用于单位报销 ，不随商品寄送</p>
                                        <p>发票内容：购买商品明细</p>
                                        <p>发票抬头：个人</p>
                                        <p>
                                            <span class="hide"><input type="radio" value="4" name="Checkout[invoice_type]"   checked="checked"   id="electronicPersonal" class="invoiceType"></span>
                                        <dl>
                                            <dt>什么是电子发票?</dt>
                                            <dd>&#903; 电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
                                            <dd>&#903; 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
                                            <dd>&#903; 您在订单详情的"发票信息"栏可查看、下载您的电子发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a></dd>
                                        </dl>
                                        </p>
                                    </div>
                                    <div class="invoice-info invoice-info-2" id="checkoutInvoiceDetail"  style="display:none;" >
                                        <ul class="type clearfix J_invoiceType">
                                            <li class="hide">
                                                <input type="radio" value="0" name="Checkout[invoice_type]" id="noNeedInvoice" >
                                            </li>
                                            <li class="">
                                                <input  class="invoiceType" type="radio" id="commonPersonal" name="Checkout[invoice_type]" value="1" >
                                                个人
                                            </li>
                                            <li class="">
                                                <input  class="invoiceType" type="radio" name="Checkout[invoice_type]" value="2" >
                                                单位
                                            </li>
                                        </ul>
                                        <div  id='CheckoutInvoiceTitle' class=" hide  invoice-title">
                                            <label>单位名称：</label>
                                            <input name="Checkout[invoice_title]" type="text" maxlength="49" value="" class="input"> <span class="tip-msg J_tipMsg"></span>
                                        </div>

                                    </div>

                                </div>
                            </div>                </div>
                        <!-- 发票信息 END-->
                    </div>
                    <form action="/Buy" method="post">
                        <div class="checkout-box-ft">
                            <!-- 商品清单 -->
                            <div id="checkoutGoodsList" class="checkout-goods-box">
                                <div class="xm-box">
                                    <div class="box-hd">
                                        <h2 class="title">确认订单信息</h2>
                                    </div>
                                    <div class="box-bd">
                                        <dl class="checkout-goods-list">
                                            <dt class="clearfix">
                                                <span class="col col-1">商品名称</span>
                                                <span class="col col-2">购买价格</span>
                                                <span class="col col-3">购买数量</span>
                                                <span class="col col-4">小计（元）</span>
                                            </dt>
                                            <dd class="item clearfix">
                                                <div class="item-row">
                                                    <div class="col col-1">
                                                        <div class="g-pic">
                                                            <img src="/images/2.jpg" width="40" height="40" />
                                                        </div>
                                                        <div class="g-info">
                                                            <a href="#">
                                                                ${flower.flower_name}                                            </a>
                                                        </div>
                                                    </div>

                                                    <div class="col col-2">${flower.price}</div>
                                                    <div class="col col-3"><input type="text" id="count" name="number" style="width: 40px;" onblur="total_money()"/>个</div>
                                                    <div class="col col-4">${flower.price}</div>
                                                </div>
                                            </dd>
                                        </dl>
                                        <div class="checkout-count clearfix">
                                            <div class="checkout-count-extend xm-add-buy">
                                                <h3 class="title">收获地址</h3></br>
                                                    <span><font style="color: red;size: 10px">*</font></span><input type="text" name="address" style="border-radius: 5px;height: 50px;"/>

                                            </div>
                                            <div class="checkout-price">
                                                <ul>

                                                    <li>
                                                        订单总额：<span id="shop_total_money"></span>
                                                    </li>
                                                    <li>
                                                        活动优惠：<span>-0元</span>
                                                        <script type="text/javascript">
                                                            checkoutConfig.activityDiscountMoney=0;
                                                            checkoutConfig.totalPrice=244.00;
                                                        </script>
                                                    </li>
                                                    <li>
                                                        优惠券抵扣：<span id="couponDesc">-0元</span>
                                                    </li>
                                                    <li>
                                                        运费：<span id="postageDesc">0元</span>
                                                    </li>
                                                </ul>
                                                <p class="checkout-total">应付总额：<strong id="totalPrice"></strong><span id="money"> </span></p>
                                            </div>
                                            <!--  -->
                                        </div>
                                    </div>
                                </div>



                            </div>
                            <!-- 商品清单 END -->
                            <input type="hidden"  id="couponType" name="Checkout[couponsType]">
                            <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
                            <input type="hidden" id="price" value="${flower.price}"/>
                            <input type="hidden" name="flower_id" value="${flower.id}"/>
                            <input type="hidden" name="all_money"/>
                            <input type="hidden" name="flower_price" value="${flower.price}"/>
                            <div class="checkout-confirm">

                                <a href="/ShowFlowerFromCar" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
                                <input type="submit" class="btn btn-primary" value="立即下单" id="checkoutToPay" />
                            </div>
                        </div>
                    </form>
                </div>



        </div>

        <script src="js/base.min.js"></script>

        <script type="text/javascript" src="/js/address_all.js"></script>
        <script type="text/javascript" src="/js/checkout.min.js"></script>
    </div>

    <!--收货地址body部分结束-->



    <!-- 底部 -->
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
                    <li><img src="/images/icon_weixin.png" /><a href="#">官方微信</a></li>
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
    经营许可证：苏B2-20130223备案许可证：苏ICP备13041162号-1360网站安全检测平台
    ©2013-2014 无锡太湖云电商网络科技发展有限公司   版权所有
                </pre>
        </div>

    </div>
    <!-- 底部 -->
    <div class="fixed-buttons">
        <ul>
            <li><div class="weixin-pic"></div></li>
            <li><img id="imgBtn-to-top" src="/images/back_top.png" /></li>
        </ul>
    </div>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="/js/unslider.min.js" type="text/javascript"></script>
    <script src="/js/index.js" type="text/javascript"></script>
    <script type="text/javascript">
        function total_money() {
            var count=document.getElementById("count").value;
            var price=document.getElementById("price").value;
            var total_money=count*${flower.price};
            var total_span=document.getElementById("money");
            var shop_total_money=document.getElementById("shop_total_money");
            total_span.innerText=total_money;
            shop_total_money.innerText=total_money;
            document.getElementById("all_money").value=total_money;
            return count;
        }
    </script>
</body>
</html>
