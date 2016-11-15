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
<center>
welcome! 
<s:property value="username"/> 
<a href='<s:url action="viewuser">
<s:param name="username" value="username"/> 
</s:url>'>个人信息 </a>
<a href="index.jsp" class="current">注销</a></center>
</header>


<body>

<center>
<form  action="changeurlinf" method="post">
	用户名:<input type="text" name="username" value="<s:property value="Uurl.username"/>" readonly="readonly"/> 
	id:<input type="text" name="id" value="<s:property value="Uurl.id"/>" readonly="readonly"/> 
	url: <input type="text" name="url" value="<s:property value="Uurl.url"/>" /> 
	更新间隔: <input type="text" name="interval"  value="<s:property value="Uurl.interval"/>" /> 
	更新标准（%）: <input type="text" name="percent" value="<s:property value="Uurl.percent"/>" /> 
	<input type="submit" value="修改"/>        		
</form>
								 <a href='<s:url action="urldetail">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>放弃修改</a>
			                     
			                     <a href='<s:url action="returnindex">
								<s:param name="username" value="username"/> 
								</s:url>'>返回主页</a>
</center>

</body>
</html>