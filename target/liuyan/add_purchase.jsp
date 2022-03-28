<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#E3E3E3">
<div style="text-align: center;">
    <form action="PurchaseServlet" method="post">
        <table border="1">
            <caption>添加采购订单信息</caption>
            <tr>
                <%--                根据name获取索引,注意name的，命名--%>
                <td>订单编号</td>
                <td><input type="text" name="id"></td></tr>
            <tr>
                <td>订单名称</td>
                <td><input type="text" name="name"></td></tr>
            <tr>
                <td>时间</td>
                <td><input type="text" name="time"></td></tr>
            <tr>
                <td>供货方</td>
                <td><input type="text" name="supply"></td></tr>
            <tr>
                <td>承办人</td>
                <td><input type="text" name="person"></td></tr>
            <tr>
                <td>费用</td>
                <td><input type="text" name="cost"></td></tr>
        </table>
        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </form>
</div>
</body>
</html>
