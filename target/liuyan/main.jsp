<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="model.Liuyan"%>
<%@ page import="db.DB"%>
<html>
<head><!--head中包含对页面的一些声明，这些内容不会显示在页面上-->
  <title>留言板信息</title><!--title表示网页的标签该内容会显示在网页的标签处（一般在浏览器的上方）-->
</head>
<body bgcolor="#E3E3E3">
<form action="liuyan.jsp" method="post"><!--这里的action表示了点击“留言”按钮后表单信息会被送到liuyan.jsp页面，并且也会跳转到liuyan.jsp-->
  <table border="1">
    <caption>所有留言信息</caption>
    <tr><th>留言人姓名</th><th>留言时间</th>
      <th>留言标题</th><th>留言内容</th></tr>
    <%
      ArrayList al=(ArrayList)session.getAttribute("al");//关于session的介绍见https://blog.csdn.net/liyang_com/article/details/83216933
      Iterator iter=al.iterator();
      while(iter.hasNext()){
        Liuyan ly=(Liuyan)iter.next();
    %><!--<%%> 这里面可以添加java代码片段，不能写Java方法的内容，可以调用Java方法-->
    <tr><td><%= new DB().getUserName(ly.getUserId()) %></td><!--<+%+%+> 将变量或表达式值输出到页面-->
      <td><%= ly.getDate().toString() %></td>
      <td><%= ly.getTitle() %></td>
      <td><%= ly.getContent() %></td></tr>
    <%
      }
    %>
  </table>
  <input type="submit" value="留言"/>
  <input type="button" onclick="javascript:window.location.href='login.jsp';" value="返回登陆"/>
  <input type="button" onclick="javascript:window.location.href='changepassword.jsp';" value="更改密码"/>
</form>
</body>
</html>
