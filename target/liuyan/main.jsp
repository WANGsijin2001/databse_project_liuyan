<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="model.Liuyan"%>
<%@ page import="db.DB"%>
<html>
<head><!--head�а�����ҳ���һЩ��������Щ���ݲ�����ʾ��ҳ����-->
  <title>���԰���Ϣ</title><!--title��ʾ��ҳ�ı�ǩ�����ݻ���ʾ����ҳ�ı�ǩ����һ������������Ϸ���-->
</head>
<body bgcolor="#E3E3E3">
<form action="liuyan.jsp" method="post"><!--�����action��ʾ�˵�������ԡ���ť�����Ϣ�ᱻ�͵�liuyan.jspҳ�棬����Ҳ����ת��liuyan.jsp-->
  <table border="1">
    <caption>����������Ϣ</caption>
    <tr><th>����������</th><th>����ʱ��</th>
      <th>���Ա���</th><th>��������</th></tr>
    <%
      ArrayList al=(ArrayList)session.getAttribute("al");//����session�Ľ��ܼ�https://blog.csdn.net/liyang_com/article/details/83216933
      Iterator iter=al.iterator();
      while(iter.hasNext()){
        Liuyan ly=(Liuyan)iter.next();
    %><!--<%%> ������������java����Ƭ�Σ�����дJava���������ݣ����Ե���Java����-->
    <tr><td><%= new DB().getUserName(ly.getUserId()) %></td><!--<+%+%+> ����������ʽֵ�����ҳ��-->
      <td><%= ly.getDate().toString() %></td>
      <td><%= ly.getTitle() %></td>
      <td><%= ly.getContent() %></td></tr>
    <%
      }
    %>
  </table>
  <input type="submit" value="����"/>
  <input type="button" onclick="javascript:window.location.href='login.jsp';" value="���ص�½"/>
  <input type="button" onclick="javascript:window.location.href='changepassword.jsp';" value="��������"/>
</form>
</body>
</html>
