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
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
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
                        <th class="table-title">帐号</th>
                        <th class="table-type">用户名</th>
                        <th class="table-author am-hide-sm-only">性别</th>
                        <th class="table-author am-hide-sm-only">年龄</th>
                        <th class="table-author am-hide-sm-only">生日</th>
                        <th class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% int i=0;%>
                    <c:forEach items="${users}" var="user">
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><%=++i%></td>
                        <td>
                            <a href="#">${user.user_id}</a>
                        </td>
                        <td>${user.user_name}</td>
                        <td class="am-hide-sm-only">${user.sex}</td>
                        <td class="am-hide-sm-only">${user.age}</td>
                        <td class="am-hide-sm-only">${user.birthday}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> <a href="#">编辑</a></button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span><a href="/DeleteUser/${user.id}">删除</a> </button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="am-cf">
                    共 <%=i%> 条记录
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <li class="am-disabled">
                                <a href="#">«</a>
                            </li>
                            <li class="am-active">
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">»</a>
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