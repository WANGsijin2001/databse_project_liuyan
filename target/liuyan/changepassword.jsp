<%--
  Created by IntelliJ IDEA.
  User: my computer
  Date: 2022/3/7
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更改密码</title>
</head>
<body>
<form action="PasswordServlet" method="post">
    <table>
        <caption>更改密码</caption>
        <tr><td>原密码：</td>
            <td><input type="password" name="origin_password" size=”20”/></td>
        </tr>
        <tr><td>新密码:</td>
            <td><input type="password" name="password" size=”20”/></td>
        </tr>
        <tr><td>确认新密码:</td>
            <td><input type="password" name="confirm_password" size=”20”/></td>
        </tr>
    </table>
    <input type="submit" value="修改密码"/>
    <input type="reset" value="重置"/>
    <input type="button" onclick="javascript:window.location.href='main.jsp';" value="返回"/>
</form>
</body>
</html>
