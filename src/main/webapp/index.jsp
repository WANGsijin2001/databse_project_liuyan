<%--让sessionScope能正常打印出用户--%>
<%@ page isELIgnored="false"%>
<%@ page language="java" pageEncoding="gb2312"%>
<html>
<body>
<title>主页</title>
<h1>这是主页面</h1>
当前用户:${sessionScope.user.username}

<%--未登录不显示--%>
<%if(session.getAttribute("user") != null){%>
<h2>请选择你要进入的页面</h2>
<a href="main.jsp">留言板系统主页</a>
<a href="Goods.jsp">资料管理主页</a>
<%}else{%>
请先<a href="login.jsp">登录</a>
<%}%>
<%--必须要置null不然一直都是那一个用户名, 具体原理未知--%>
<%session.setAttribute("user", null);%>

</body>
</html>
