<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>404</title>
</head>

<header>
<center>
welcome! 
<s:property value="username"/> 
<a href='<s:url action="viewuser">
<s:param name="username" value="username"/> 
</s:url>'>个人信息 </a>
<a href="index.jsp" class="current">注销</a></center>
</header>

<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center>
<font size="25"  style="font-family:宋体">出错了！</font>
</center>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/>

<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>

</body>
</html>