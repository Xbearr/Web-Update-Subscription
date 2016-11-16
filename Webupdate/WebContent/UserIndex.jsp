<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>welcome</title>
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

<body  >



<div id="Layer1" style="position:absolute; left:0px; top:0px;width:100%; height:100%; z-index:-1">    
<img src="images/index.jpg" height="100%" width="100%"/>    
</div> 
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center>
<font size="30" color="#6f00d2" style="font-family:é»ä½">Webpage Updater</font>
</center>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/>

<center>
								<a href='<s:url action="viewurl">
			                     <s:param name="username" value="username"/> 
			                     </s:url>'>查看url</a>
</center>
</body>

</html>