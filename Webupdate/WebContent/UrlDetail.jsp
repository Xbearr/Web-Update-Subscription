<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>url详情</title>
</head>

<header>
<center>welcome! <s:property value="username"/></center>
<center><a href="index.jsp" class="current">注销</a></center>
</header>


<body>
<div id="Layer1" style="position:absolute; left:0px; top:0px;width:100%; height:100%; z-index:-1">    
<img src="images/detail.jpg" height="100%" width="100%"/>
</div> 
<br/><br/><br/><br/><br/><br/>
<center>
<table width="400" border="1">
  <tr>
    <th scope="row">Id:</th>
    <td><B><s:property value="Uurl.id"/></B></td>
  </tr>
  <tr>
    <th scope="row">Url:</th>
    <td><B><s:property value="Uurl.url"/></B></td>
  </tr>
  <tr>
    <th scope="row">间隔:</th>
    <td><B><s:property value="Uurl.interval"/></B></td>
  </tr>
  <tr>
    <th scope="row">百分比:</th>
    <td><B><s:property value="Uurl.percent"/></B></td>
  </tr>
  <tr>
    <th scope="row">最近更新时间:</th>
    <td><B><s:property value="Uurl.time"/></B></td>
  </tr>
</table>

<br>
<br>
<br>

<a href='<s:url action="viewurl">
<s:param name="username" value="username"/> 
</s:url>'>查看url</a>

<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>


</center>


 
</body>
</html>