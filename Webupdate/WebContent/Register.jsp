<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
<center>
<form  action="register" method="post">
	用户名:<input type="text" name="username" /> 
	密码: <input type="text" name="password"/> 
	邮箱 : <input type="text" name="email" /> 
	<input type="submit" value="注册"/>        		
</form>
</center>

<center>
已有账户？<a href="Login.jsp" class="current">登录</a>
</center>

<center><a href="index.jsp" class="current">返回主页</a></center>
</body>
</html>