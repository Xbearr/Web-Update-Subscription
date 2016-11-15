<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>操作成功</title>
</head>

<header>
<center>
welcome! 
<s:property value="username"/> 
<a href='<s:url action="viewuser">
<s:param name="username" value="username"/> <br/>
</s:url>'>个人信息 </a>
<a href="index.jsp" class="current">注销</a></center>
</header>

<body style="background-image:url(bookof.jpg);background-position:center; background-repeat:repeat-y">
<center>
<font size="15" color="#6f00d2" style="font-family:华文行楷">操作成功</font>
<br />
								<a href='<s:url action="viewurl">
			                     <s:param name="username" value="username"/> 
			                     </s:url>'>查看url</a>
			                     
			                      <a href='<s:url action="returnindex">
								<s:param name="username" value="username"/> 
								</s:url>'>返回主页</a>
</center>
</body>
</html>