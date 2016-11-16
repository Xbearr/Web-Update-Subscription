<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change Your Information</title>
</head>


<header>
<center>welcome! 


<%
String username=request.getParameter("username");
String email=request.getParameter("email");

out.print(username);
%>

<a href="viewuser.action?username=<%=username%>"> 个人信息 </a>


<a href="index.jsp" class="current">注销</a></center>
</header>


<body>

<center>
<form  action="changeuserinf" method="post">
	用户名:<input type="text" name="username" value="<%=username%>" readonly="readonly"/> 
	old password: <input type="password" name="password"   placeholder="如不修改密码请留空"/> 
	new password: <input type="password" name="newpassword"   placeholder="如不修改密码请留空"/> 
	email: <input type="text" name="email"  value="<%=email%>"/> 
	<input type="submit" value="修改"/>        		
</form>

<a href='<s:url action="viewuser">
<s:param name="username" value="username"/> 
</s:url>'>放弃修改 </a>

<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>
</center>


</body>
</html>