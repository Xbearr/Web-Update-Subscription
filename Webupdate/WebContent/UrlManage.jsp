<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Your Url</title>
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
		<s:iterator value="Uurl" id="urls" status="ss">
	        	
	        	<div class="templatemo_product_box">
	            	
	                <div class="product_info">
	                	
	                	<table border="0">
						  <tr>
						  	<th>url:</th>
						  	<th><s:property value="#urls.url"/></th>
						  </tr>
						 </table>
						 <center>
						 		<a href='<s:url action="showurltochange">
					<s:param name="id" value="#urls.id"/> 
					</s:url>'>修改信息</a>
						 		<a href='<s:url action="urldetail">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>详细信息</a>
						    	<a href='<s:url action="deleteurl">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>删除</a>
						</center>
	                	<br/>
	                	<br/>
	                </div>
	                <div class="cleaner">&nbsp;</div>
	            </div>

        	</s:iterator>
	<div class="cleaner_with_height">&nbsp;</div>
	
<a href='AddUrl.jsp?username=<s:property value="#urls.username"/>'>添加url</a>


	
<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>

</center>
</body>
</html>