<%--
  Created by IntelliJ IDEA.
  User: 13280
  Date: 2022/3/21
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#E3E3E3">
<div style="text-align: center;">
    <form action="GoodServlet" method="post">
        <table border="1">
            <caption>添加商品</caption>
            <tr>
<%--                根据name获取索引,注意name的，命名--%>
                <td>商品编号</td>
                <td><input type="text" name="id"></td></tr>
            <tr>
                <td>商品名</td>
                <td><input type="text" name="Goodname"></td></tr>
            <tr>
                <td>商品价格</td>
                <td><input type="text" name="value"></td></tr>
            <tr>
                <td>商品生产日期</td>
                <td><input type="text" name="manufacture"></td></tr>
            <tr>
                <td>商品保质期</td>
                <td><input type="text" name="quality_guarantee_period"></td></tr>
            <tr>
                <td>供应商信息</td>
                <td><textarea name="supplier" rows="5" cols="10"></textarea></td></tr>
        </table>
        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </form>
</div>
</body>
</html>
