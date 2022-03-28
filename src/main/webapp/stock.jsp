<%--ComingLiu--%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="db.DB"%>
<%@ page import="model.Purchase" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>进货单</title>
</head>
<body bgcolor="#E3E3E3">
<form action="add_stock.jsp" method="post">
    <table border="1">
        <caption>进货单</caption>
        <tr><th>订单号</th><th>订单名</th><th>时间</th><th>供货方</th><th>承办人</th><th>费用</th></tr>
        <%
            ArrayList al4 = (ArrayList) session.getAttribute("al4");
            Iterator iter = al4.iterator();
            while(iter.hasNext()){
                Purchase purchase = (Purchase) iter.next();
        %>
        <%--        注意这里面有等号!!!!!!--%>
        <tr><td><%= purchase.getId() %></td>
            <td><%= purchase.getName() %></td>
            <td><%= purchase.getTim() %></td>
            <td><%= purchase.getSupply() %></td>
            <td><%= purchase.getPerson() %></td>
            <td><%= purchase.getValue() %></td></tr>
        <%
            }
        %>
    </table>
    <input type="submit" value="添加数据"/>
</form>
</body>
</html>
