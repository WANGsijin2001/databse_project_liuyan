<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
    <title>�������԰�</title>
</head>
<body bgcolor="#E3E3E3">
<%session.setAttribute("user", null);%>
<form action="mainServlet" method="post">
    <table>
        <caption>�û���¼</caption>
        <tr><td>��¼����</td>
            <td><input type="text" name="username" size=��20��/></td>
        </tr><tr><td>����:</td>
        <td><input type="password" name="password" size=��21��/></td></tr>
    </table>
    <input type="submit" value="��¼"/>
    <input type="reset" value="����"/>
</form>
���ûע�ᵥ��<a href="register.jsp" target="_blank">����</a>ע�ᣡ<!--<a> ��ǩÿ����һ�Σ��ͻᴴ��������,href�������û򷵻ر�������Դ��URL
target="_blank"�����ó��������µĴ����д򿪣������Ͳ���Ҫ�뿪ԭ����ҳ����-->
</body>
</html>
