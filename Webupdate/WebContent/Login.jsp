<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<center>
<form  action="login" method="post">
	用户名:<input type="text" name="username" /> 
	密码: <input type="text" name="password"/> 
	<input type="submit" value="登录"/>        		
</form>
</center>

<center>
还没有账户？<a href="Register.jsp" class="current">注册</a>
</center>

<center><a href="index.jsp" class="current">返回主页</a></center>
</body>
</html>