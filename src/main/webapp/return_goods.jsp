<%--ComingLiu--%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="db.DB"%>
<%@ page import="model.Purchase" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>�˻���Ϣ</title>
</head>
<body bgcolor="#E3E3E3">
<form action="add_return_goods.jsp" method="post">
    <table border="1">
        <caption>�˻���Ϣ</caption>
        <tr><th>������</th><th>������</th><th>ʱ��</th><th>������</th><th>�а���</th><th>����</th></tr>
        <%
            ArrayList al5 = (ArrayList) session.getAttribute("al5");
            Iterator iter = al5.iterator();
            while(iter.hasNext()){
                Purchase purchase = (Purchase) iter.next();
        %>
        <%--        ע���������еȺ�!!!!!!--%>
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
    <input type="submit" value="�������"/>
</form>
</body>
</html>
