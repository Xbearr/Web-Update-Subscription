<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Information</title>
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


<br/><br/><br/><br/><br/><br/>
<center>
<table width="400" border="1">
  <tr>
    <th scope="row">Name:</th>
    <td><B><s:property value="user.username"/></B></td>
  </tr>
  <tr>
    <th scope="row">Email:</th>
    <td><B><s:property value="user.email"/></B></td>
  </tr>
</table>

<br>
<br>
<br>

<a href='ChangeUserInf.jsp?username=<s:property value="user.username"/>&email=<s:property value="user.email"/>'>修改信息</a>

<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>


</center>


</body>
</html>