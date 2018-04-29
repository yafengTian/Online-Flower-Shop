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

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="/view/user/addflower.jsp">新增</a></button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">

        </div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
            </div>
        </div>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th class="table-check"><input type="checkbox"></th>
                        <th class="table-id">ID</th>
                        <th class="table-title">产品名</th>
                        <th class="table-title">分类</th>
                        <th class="table-author am-hide-sm-only">价格</th>
                        <th class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%int i=0;%>
                    <c:forEach items="${flowers}" var="flower">
                    <tr>
                        <%i++;%>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">${flower.flower_name}</a>
                        </td>
                        <td>${flower.catagory}</td>
                        <td class="am-hide-sm-only">${flower.price}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> <a href="#">编辑</a></button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> <a href="/DeleteFlower/${flower.id}">删除</a></button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="am-cf">
                    共 <%=i%> 条记录  共<%=(i/7)+1%>页
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <%int k=i;%>
                            <li>
                                <a href="#">前一页</a>
                            </li>
                              <%
                            for(int j=1;j<=k/7+1;j++){
                            %>
                            <li>
                                <a href="#"><%=j%></a>
                            </li>
                            <%}%>
                            <li>
                                <a href="#">后一页</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <hr>
            </form>
        </div>
    </div>
</div>
</body>
</html>