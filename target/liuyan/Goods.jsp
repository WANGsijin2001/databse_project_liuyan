<%--ComingLiu--%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="db.DB"%>
<%@ page import="model.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>资料管理</title>
</head>
<body bgcolor="#E3E3E3">
<form action="addgoods.jsp" method="post">
    <table border="1">
        <caption>资料管理</caption>
        <tr><th>商品号</th><th>商品名</th><th>商品价格</th><th>生产日期</th><th>保质期</th><th>供应商</th></tr>
        <%
            ArrayList al2 = (ArrayList) session.getAttribute("al2");
            Iterator iter = al2.iterator();
            while(iter.hasNext()){
                Goods Gds = (Goods)iter.next();
        %>
<%--        注意这里面有等号!!!!!!--%>
        <tr><td><%= Gds.getId() %></td>
            <td><%= Gds.getGoodname() %></td>
            <td><%= Gds.getValue() %></td>
            <td><%= Gds.getDate_of_manufacture() %></td>
            <td><%= Gds.getQuality_guarantee_period() %></td>
            <td><%= Gds.getSupplier() %></td></tr>
        <%
            }
        %>
    </table>
    <input type="submit" value="添加数据"/>
</form>
</body>
</html>
