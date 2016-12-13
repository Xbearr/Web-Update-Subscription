<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/login.css">
	<link type="text/css" rel="stylesheet" href="css/mod.css">
	
<title>Find back your password</title>
</head>
<body> 
	<div class="ue-bar">
	    <div class="ue-bar-warp">
	        <div class="ue-bar-logo">
	            <a href="index.jsp">
	                <img src="images/logo1.png" width="150" >
	            </a>
	        </div>
	        <div class="ue-bar-nav">
	            <ul>
	                <li ><a href="index.jsp">
	                    <em>INDEX</em>
	                </a></li>
	                <li><a href="Help.jsp">
	                    <em>HELP</em>
	                </a></li>
	                <li><a href="contact.jsp">
	                    <em>Contact US</em>
	                </a></li>
	            </ul>
	        </div>
	       <nav id="hd_nav">
	        <ul>
	           <!--
	            <li class="skin">
	                <a href="#">换肤
	                    <span class="ico"></span>
	                </a>
	            </li>
	            -->
	            <li class="login">
	                <img src="http://quc.qhimg.com/dm/20_20_80/t014987b2ab2e751b14.png" class="avatar">
	                <a class="a1" href="Login.jsp">
	                    登录
	                </a>
	                <a class="a2" href="Register.jsp">
	                    注册
	                </a>
	            </li>
	        </ul>
	    </nav>
	    </div>
	</div>
	
	<div class="helpmod">
    	<h1>Find back your password</h1>
        <div class="helpmod-faq">
        	<div class="title">
       			<p>请输入您要找的用户和对应邮箱地址</p>
       		</div>
       		<div class="body">
       			<form  action="findpassword" method="post">
	       			<p>&nbsp</p>
	       			<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspUsername&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp<input type="text" style="font-size:20px;font-family:Tahoma;" name="username" required="required" id="username" /></p>
					<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAccount-email&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp<input type="text" style="font-size:20px;font-family:Tahoma;" name="email"  id="email" required="required"/></p>
	       			<p>&nbsp</p>
	       			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	       			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	       			<input type="submit" style="border-radius:2px;background: #69b3f2;line-height: 50px;overflow: hidden;width: 390px;height: 50px;font-size:20px;" value="确认" />
       			</form>
       		</div>
        </div>
    </div>
	
</body>
</html>