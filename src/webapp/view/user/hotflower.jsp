<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-24
  Time: 上午10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
    <title>花枝招展</title>
    <link rel="icon" type="image/x-incon" href="/images/2.jpg"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css" />

</head>
<body>
<div id="wrap">

    <div class="header">
        <div class="logo"><a href="index.html"><img src="/images/logo.gif" alt="" title="" border="0" /></a></div>
        <div id="menu">
            <ul>
                <li class="selected"><a href="/">首页</a></li>
                <li><a href="/AllFlowers">全部鲜花</a></li>
                <li><a href="/view/user/specials.jsp">今日特色</a></li>
                <li><a href="/view/user/newflower.jsp">新品上市</a></li>
                <li><a href="/view/user/hotflower.jsp">热销</a></li>
                <li><a href="/view/user/login.jsp">登录</a></li>
                <li>
                    <form>
                        <tr>
                            <td><input type="text" name="search" style="width: 150px;height: 26px;border-radius: 5px;background: #DFDFDF;opacity:0.5;"></td>
                            <td><input type="submit" value="搜索" style="height: 26px;width: 50px;border-radius: 5px;background: #DFDFDF;opacity:0.5;"></td>
                        </tr>
                    </form>
                </li>

            </ul>
        </div>


    </div>


    <div class="center_content">
        <div class="left_content">

            <div class="title"><span class="title_icon"><img src="/images/bullet1.gif" alt="" title="" /></span>Special gifts</div>

            <div class="feat_prod_box">

                <div class="prod_img"><a href="details.html"><img src="/images/prod1.gif" alt="" title="" border="0" /></a></div>

                <div class="prod_det_box">
                    <span class="special_icon"><img src="/images/hot.png" alt="" title="" /></span>
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title">Product name</div>
                        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                        <a href="details.html" class="more">- more details -</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>


            <div class="feat_prod_box">

                <div class="prod_img"><a href="details.html"><img src="/images/prod2.gif" alt="" title="" border="0" /></a></div>

                <div class="prod_det_box">
                    <span class="special_icon"><img src="/images/hot.png" alt="" title="" /></span>
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title">Product name</div>
                        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                        <a href="details.html" class="more">- more details -</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>



            <div class="feat_prod_box">

                <div class="prod_img"><a href="details.html"><img src="/images/prod1.gif" alt="" title="" border="0" /></a></div>

                <div class="prod_det_box">
                    <span class="special_icon"><img src="/images/hot.png" alt="" title="" /></span>
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title">Product name</div>
                        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                        <a href="details.html" class="more">- more details -</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>


            <div class="feat_prod_box">

                <div class="prod_img"><a href="details.html"><img src="/images/prod2.gif" alt="" title="" border="0" /></a></div>

                <div class="prod_det_box">
                    <span class="special_icon"><img src="/images/hot.png" alt="" title="" /></span>
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title">Product name</div>
                        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                        <a href="details.html" class="more">- more details -</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>

            <div class="pagination">
                <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a>
            </div>


            <div class="clear"></div>
        </div><!--end of left content-->

        <div class="right_content">
            <div class="languages_box">
                <span class="red">Languages:</span>
                <a href="#"><img src="/images/gb.gif" alt="" title="" border="0" /></a>
                <a href="#"><img src="/images/fr.gif" alt="" title="" border="0" /></a>
                <a href="#"><img src="/images/de.gif" alt="" title="" border="0" /></a>
            </div>
            <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#"><strong>USD</strong></a>
            </div>


            <div class="cart">
                <div class="title"><span class="title_icon"><img src="/images/cart.gif" alt="" title="" /></span><a href="<%=session.getAttribute("user")==null?"#":"/ShowFlowerFromCar"%>">我的购物车</a></div>
                &nbsp;&nbsp;&nbsp;
                <div class="title"><span class="title_icon"><img src="/images/call.jpg" alt="" title="" /></span>联系我们</div>
                <div class="title"><span class="title_icon"><img src="/images/user.png" alt="" title="" /></span>个人中心</div>

            </div>




            <div class="title"><span class="title_icon"><img src="/images/bullet3.gif" alt="" title="" /></span>本店介绍</div>
            <div class="about">
                <p>
                    <img src="../../images/about.gif" alt="" title="" class="right" />
                    金太阳鲜花坊连锁店经销的鲜花、生日花束、情人花束、
                    鲜花速递、鲜花快递、开业花篮、开业花牌、庆典鲜花、婚庆鲜花、会议鲜花、
                    颁奖鲜花品种齐全、价格合理。金太阳鲜花坊连锁店实力雄厚，重信用、守合同、保证产品质量，
                    以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。
                </p>

            </div>
            <div class="right_box">

                <div class="title"><span class="title_icon"><img src="/images/bullet4.gif" alt="" title="" /></span>今日特价</div>
                <div class="new_prod_box">
                    <a href="details.html">product name</a>
                    <div class="new_prod_bg">
                        <span class="new_icon"><img src="/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="/images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                    </div>
                </div>

                <div class="new_prod_box">
                    <a href="details.html">product name</a>
                    <div class="new_prod_bg">
                        <span class="new_icon"><img src="/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="/images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                    </div>
                </div>

                <div class="new_prod_box">
                    <a href="details.html">product name</a>
                    <div class="new_prod_bg">
                        <span class="new_icon"><img src="/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="/images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                    </div>
                </div>

            </div>

            <div class="right_box">

                <div class="title"><span class="title_icon"><img src="/images/bullet5.gif" alt="" title="" /></span>分类</div>

                <ul class="list">
                    <li><a href="#">accesories</a></li>
                    <li><a href="#">flower gifts</a></li>
                    <li><a href="#">specials</a></li>
                    <li><a href="#">hollidays gifts</a></li>
                    <li><a href="#">accesories</a></li>
                    <li><a href="#">flower gifts</a></li>
                    <li><a href="#">specials</a></li>
                    <li><a href="#">hollidays gifts</a></li>
                    <li><a href="#">accesories</a></li>
                    <li><a href="#">flower gifts</a></li>
                    <li><a href="#">specials</a></li>
                </ul>

                <div class="title"><span class="title_icon"><img src="/images/bullet6.gif" alt="" title="" /></span>Partners</div>

                <ul class="list">
                    <li><a href="#">accesories</a></li>
                    <li><a href="#">flower gifts</a></li>
                    <li><a href="#">specials</a></li>
                    <li><a href="#">hollidays gifts</a></li>
                    <li><a href="#">accesories</a></li>
                    <li><a href="#">flower gifts</a></li>
                    <li><a href="#">specials</a></li>
                    <li><a href="#">hollidays gifts</a></li>
                    <li><a href="#">accesories</a></li>
                </ul>

            </div>


        </div><!--end of right content-->




        <div class="clear"></div>
    </div><!--end of center content-->


    <div class="footer">
        <div class="left_footer"><img src="/images/footer_logo.gif" alt="" title="" /><br /> <a href="http://www.cssmoban.com/" title="free templates">cssmoban.com</a></div>
        <div class="right_footer">
            <a href="#">home</a>
            <a href="#">about us</a>
            <a href="#">services</a>
            <a href="#">privacy policy</a>
            <a href="#">contact us</a>

        </div>


    </div>


</div>

</body>
</html>
