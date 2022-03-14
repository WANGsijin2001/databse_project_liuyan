<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
  <title>留言板</title>
</head>
<body bgcolor="#E3E3E3">
<div style="text-align: center;">
  <form action="addServlet" method="post"><!--form对象就是html的表单，action 属性定义了当表单被提交时数据被送往何处-->
    <table border="1"><!--border参数用于设置表格的边框的厚度-->
      <caption>填写留言信息</caption><!--caption参数用于设置表格的标题,默认居中-->
      <tr><td>留言标题</td><!--tr表示表的一行,th表示表头,td表示表的数据。没有太大区别前者是黑体后者不是黑体-->
        <td><input type="text" name="title"/></td></tr><!--input-text表示一个文本输入域,在这个文本输入域中输入的内容的名称为“title”-->
      <tr><td>留言内容</td>
        <td><textarea name="content" rows="5" cols="35"></textarea></td></tr><!--可以通过设置row和col两个参数来控制textarea的长度和宽度
        textarea和input-text类似，都是输入文本的一块区域-->
    </table>

    <input type="submit" value="提交"/><!--submit类型会将表单数据传递给别的页面，value参数表示这个地方会显示“提交”两个字给用户看-->
    <input type="reset" value="重置"/><!--reset类型表示会它的表单中所有输入元素的值都重置为它们的默认值-->
  </form>
</div>
</body>
</html>
