<%@ page language="java" import="com.updater.action.ViewUrl" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us!</title>
    <link type="text/css" rel="stylesheet" href="css/navigation.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/mod.css"> 
</head>
<body>
	<div class="ue-bar">
		<!-- 导航 -->
	    <div class="ue-bar-warp">
	        <div class="ue-bar-logo">
	            <a href="index.jsp">
	                <img src="images/logo1.png" width="150" >
	            </a>
	        </div>
	        <div class="ue-bar-nav">
	            <ul>
	                <li><a href='<s:url action="returnindex">
						<s:param name="username" value="username"/> 
						</s:url>'>
                    <em>INDEX</em>
               		</a></li>
               		<li><a href='<s:url action="viewurl">
			        	<s:param name="username" value="username"/> 
			            </s:url>'>
                    <em>URLS</em>
                	</a></li>
	                <li><a href='<s:url action="returnhelp">
						<s:param name="username" value="username"/> 
						</s:url>'>
	            	<em>HELP</em>
	            	</a></li>
	                <li class="active"><a class="active" href='<s:url action="returncontact">
	                	<s:param name="username" value="username"/> 
						</s:url>'>
	                <em>Contact US</em>
	                </a></li>
	            </ul>
	        </div>
	        
	        <nav id="hd_nav">
	        <ul>
	           <!--
	            <li class="skin">
	                <a href="#">æ¢è¤
	                    <span class="ico"></span>
	                </a>
	            </li>
	            -->
	            <li class="login">
	                <img src="http://quc.qhimg.com/dm/20_20_80/t014987b2ab2e751b14.png" class="avatar">
	           		<a class="a1" href='<s:url action="viewuser">
					<s:param name="username" value="username"/> 
					</s:url>'><s:property value="username"/>  </a>
					<a class="a2" href="index.jsp" class="current">注销</a>
	            </li>
	        </ul>
    		</nav>
	    </div>
    </div>
    
    <!--联系方式-->
    <div class="helpmod">
    	<h1></h1>
        <div class="helpmod-faq">
       		<div class="title">
       			<p>How to contact us?</p>
       		</div>
       		<div class="body">
       			<p>如果您对我们的网站建设有较好的建议、改进意见或者是使用中遇到了问题，请联系我们    ~_~</p>
       			<p>我们的产品技术支持：</p>
       			<p>1.邮箱：ruansheproject@163.com</p>
       			<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspoldyang95@126.com</p>
       			<p>2.联系电话：13115509568</p>
       			<p>3.github地址:<a href="https://github.com/Xbearr/Web-Update-Subscription"> updater</a></p>
       		</div>
       	</div>
     </div>
</body>
</html>