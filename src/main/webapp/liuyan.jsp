<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
  <title>���԰�</title>
</head>
<body bgcolor="#E3E3E3">
<div style="text-align: center;">
  <form action="addServlet" method="post"><!--form�������html�ı���action ���Զ����˵������ύʱ���ݱ������δ�-->
    <table border="1"><!--border�����������ñ��ı߿�ĺ��-->
      <caption>��д������Ϣ</caption><!--caption�����������ñ��ı���,Ĭ�Ͼ���-->
      <tr><td>���Ա���</td><!--tr��ʾ���һ��,th��ʾ��ͷ,td��ʾ������ݡ�û��̫������ǰ���Ǻ�����߲��Ǻ���-->
        <td><input type="text" name="title"/></td></tr><!--input-text��ʾһ���ı�������,������ı�����������������ݵ�����Ϊ��title��-->
      <tr><td>��������</td>
        <td><textarea name="content" rows="5" cols="35"></textarea></td></tr><!--����ͨ������row��col��������������textarea�ĳ��ȺͿ��
        textarea��input-text���ƣ����������ı���һ������-->
    </table>

    <input type="submit" value="�ύ"/><!--submit���ͻὫ�����ݴ��ݸ����ҳ�棬value������ʾ����ط�����ʾ���ύ�������ָ��û���-->
    <input type="reset" value="����"/><!--reset���ͱ�ʾ�����ı�����������Ԫ�ص�ֵ������Ϊ���ǵ�Ĭ��ֵ-->
  </form>
</div>
</body>
</html>
