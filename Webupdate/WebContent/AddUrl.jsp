<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Url</title>
</head>

<header>
<center>welcome! 


<%
String username=request.getParameter("username");
out.print(username);
%>
</center>


<center><a href="index.jsp" class="current">注销</a></center>
</header>


<body>

<center>
<form  action="addurl" method="post">
	用户名:<input type="text" name="username" value="<%=username%>" readonly="readonly"/> 
	url: <input type="text" name="url"/> 
	更新间隔: <input type="text" name="interval" /> 
	更新标准（%）: <input type="text" name="percent" /> 
	<input type="submit" value="添加"/>        		
</form>
</center>

								 <a href='<s:url action="viewurl">
			                     <s:param name="username" value="username"/> 
			                     </s:url>'>查看url</a>

</body>
</html>