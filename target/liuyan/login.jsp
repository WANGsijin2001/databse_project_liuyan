<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
    <title>简易留言板</title>
</head>
<body bgcolor="#E3E3E3">
<%session.setAttribute("user", null);%>
<form action="mainServlet" method="post">
    <table>
        <caption>用户登录</caption>
        <tr><td>登录名：</td>
            <td><input type="text" name="username" size=”20”/></td>
        </tr><tr><td>密码:</td>
        <td><input type="password" name="password" size=”21”/></td></tr>
    </table>
    <input type="submit" value="登录"/>
    <input type="reset" value="重置"/>
</form>
如果没注册单击<a href="register.jsp" target="_blank">这里</a>注册！<!--<a> 标签每出现一次，就会创建超链接,href用于设置或返回被链接资源的URL
target="_blank"可以让超链接在新的窗口中打开，这样就不需要离开原来的页面了-->
</body>
</html>
