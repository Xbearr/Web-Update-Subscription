<%@ page language="java" import="com.updater.action.ViewUrl" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head lang="en">
  	 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Frequently asked question</title>
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
                	<li class="active"><a class="active" href='<s:url action="addjob">
			       		<s:param name="username" value="username"/> 
			        	</s:url>'>
                	<em>AddJobs</em>
                	</a></li>
                	<li><a href='<s:url action="returnhelp">
						<s:param name="username" value="username"/> 
						</s:url>'>
	                    <em>HELP</em>
	                </a></li>
					<li><a href='<s:url action="returncontact">
						<s:param name="username" value="username"/> 
						</s:url>'>
	                    <em>Contact us</em>
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
    
    <div class="helpmod">
    	<h1>Add jobs</h1>
    	<div class="helpmod-faq-addjobs">
			<form  action="addurl" method="post">
				<input type="hidden" name="username" value="<s:property value="username"/> " readonly="readonly"/>
				<p>用户名&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<s:property value="username" /></p> 
				<p>url&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" style="font-size:20px;font-family:Tahoma;" required="required" name="url"/> </p>
				<p>CHECK INTERVAL&nbsp:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="interval">
																			<option value="900">15 mins</option>
																			<option value="1800">30 mins</option>
																			<option value="60" selected="selected">1 mins</option>
																			<option value="3600">1 hours</option>
																			<option value="7200">2 hours</option>
																			<option value="14400">4 hours</option>
																			<option value="21600">6 hours</option>
																			<option value="43200">12 hours</option>
																			<option value="86400">1 days</option>
																			</select></p>
				<p>EMAIL-TRIGGER&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp&nbsp <select style="font-size:20px;font-family:Tahoma;width:100px;" name="percent">
																			<option value="1" selected="selected">Tiny</option>
																			<option value="2">Normal</option>
																			<option value="3">Major</option>
																			</select></p>
				<input type="hidden" name="active" value="1"/>
				<p><span style="display:block; text-align:right" ><input type="submit" style="font-size:20px;font-family:Tahoma;" value="添加"/></p>    		
			</form>
		</div>
	</div>
    
</body>
</html>