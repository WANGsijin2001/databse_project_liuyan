<%--ComingLiu--%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="db.DB"%>
<%@ page import="model.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>���Ϲ���</title>
</head>
<body bgcolor="#E3E3E3">
<form action="addgoods.jsp" method="post">
    <table border="1">
        <caption>���Ϲ���</caption>
        <tr><th>��Ʒ��</th><th>��Ʒ��</th><th>��Ʒ�۸�</th><th>��������</th><th>������</th><th>��Ӧ��</th></tr>
        <%
            ArrayList al2 = (ArrayList) session.getAttribute("al2");
            Iterator iter = al2.iterator();
            while(iter.hasNext()){
                Goods Gds = (Goods)iter.next();
        %>
<%--        ע���������еȺ�!!!!!!--%>
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
    <input type="submit" value="�������"/>
</form>
</body>
</html>
