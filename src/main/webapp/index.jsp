<%--��sessionScope��������ӡ���û�--%>
<%@ page isELIgnored="false"%>
<%@ page language="java" pageEncoding="gb2312"%>
<html>
<body>
<title>��ҳ</title>
<h1>������ҳ��</h1>
��ǰ�û�:${sessionScope.user.username}

<%--δ��¼����ʾ--%>
<%if(session.getAttribute("user") != null){%>
<h2>��ѡ����Ҫ�����ҳ��</h2>
<a href="main.jsp">���԰�ϵͳ��ҳ</a>
<a href="Goods.jsp">���Ϲ�����ҳ</a>
<%}else{%>
����<a href="login.jsp">��¼</a>
<%}%>
<%--����Ҫ��null��Ȼһֱ������һ���û���, ����ԭ��δ֪--%>
<%session.setAttribute("user", null);%>

</body>
</html>
