<%--
  Created by IntelliJ IDEA.
  User: yafeng
  Date: 18-4-29
  Time: 下午6:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/plugins.css" />
    <link rel="stylesheet" href="/css/icons.css" />
    <link rel="stylesheet" href="/css/amazeui.min.css" />
    <link rel="stylesheet" href="/css/font-awesome.min.css" />
</head>

<body class="breakpoint-1200" rlt="1" style="height: 934px;">
<header class="header navbar navbar-fixed-top" role="banner">
    <input type="hidden" value="123" id="pwd">
    <input type="hidden" value="1" id="uid">
    <div class="container">
        <ul class="nav navbar-nav">
            <li class="nav-toggle">
                <a href="javascript:void(0);" title=""><i class="icon-reorder"></i>
                </a>
            </li>
        </ul>
        <a class="navbar-brand" href="/view/user/back.jsp"> <strong>花枝招展</strong> 后台管理
        </a>
        <a href="#" class="toggle-sidebar bs-tooltip" data-placement="bottom" data-original-title="Toggle navigation"> <i class="icon-reorder"></i>
        </a>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs hidden-sm">
        </ul>
        </li>

        </ul>
    </div>
    <div id="project-switcher" class="container project-switcher" style="position: relative; margin-top: 0px; display: none;">
        <div id="scrollbar">
            <div class="handle"></div>
        </div>
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: 100%; height: auto;">

            <div class="slimScrollBar ui-draggable" style="background: rgb(255, 255, 255); height: 5px; position: absolute; bottom: 1px; opacity: 0.2; display: block; border-radius: 5px; z-index: 99;"></div>
            <div class="slimScrollRail" style="width: 100%; height: 5px; position: absolute; bottom: 1px; display: none; border-radius: 5px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90;"></div>
        </div>
    </div>
</header>
<div id="container" class="fixed-header">
    <div id="sidebar" class="sidebar-fixed">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
            <div id="sidebar-content" style="overflow: hidden; width: auto; height: 100%;">

                <ul id="nav">

                    <li>
                        <a href="/ManagerFlower" target="right"> <i class="icon-desktop"> </i>产品管理
                            <i class="arrow icon-angle-left"></i></a>
                        <ul class="sub-menu">

                        </ul>
                    </li>
                    <li>
                        <a href="#" target="right"> <i class="icon-desktop"> </i>产品类别<i class="arrow icon-angle-left"></i></a>
                    </li>
                    <li>
                        <a href="/view/user/manager_user.jsp" target="right"> <i class="icon-desktop"> </i>用户管理 <i class="arrow icon-angle-left"></i></a>
                        <ul class="sub-menu">
                        </ul>
                    </li>
                    <li>
                        <a href="/view/user/manager_list.jsp" target="right"> <i class="icon-desktop"> </i>用户订单 <i class="arrow icon-angle-left"></i></a>
                        <ul class="sub-menu">
                        </ul>
                    </li>
                    <li>
                        <a href="user.html" target="right"> <i class="icon-desktop"> </i>交易记录 <i class="arrow icon-angle-left"></i></a>
                        <ul class="sub-menu">
                        </ul>
                    </li>
                </ul>

                <div class="sidebar-widget align-center">
                    <div class="btn-group" data-toggle="buttons" id="theme-switcher">
                        <label class="btn active">
                            <input type="radio" name="theme-switcher" data-theme="bright">
                            <i class="icon-sun"></i> 白天
                        </label>
                        <label class="btn">
                            <input type="radio" name="theme-switcher" data-theme="dark">
                            <i class="icon-moon"></i> 黑夜
                        </label>
                    </div>
                </div>
                <div class="fill-nav-space"></div>
            </div>
            <div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 317.769px;"></div>
            <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
        </div>
        <div id="divider" class="resizeable"></div>
    </div>
    <div id="content">
        <iframe src="/ManagerFlower" width="100%" height="900" name="right" style="border: none;"></iframe>
    </div>
</div>
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/myplugs/js/plugs.js">
</script>
<script type="text/javascript">
    //添加编辑弹出层
    function updatePwd(title, id) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "/user/view/back.jsp"
        });
    }
</script>

<a data-ver="1.0.9" data-src="9g123kad23" data-uid="d93a706d60ae9fb1fb429be91332c0a6" data-type="3" href="javascript:" id="extension-loan-id" style="display: none;"></a>
</body>

</html>
