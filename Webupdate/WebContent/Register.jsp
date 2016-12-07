<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/login.css">
<title>Register</title>
</head>
<body>
<div id="Layer1" style="position:absolute; left:0px; top:0px;width:100%; height:100%; z-index:-1">    
<img src="images/bg.jpg" height="100%" width="100%"/>  
</div>  
<div class="ue-bar">
    <div class="ue-bar-warp">
        <div class="ue-bar-logo">
            <a href="index.html">
                <img src="images/logo1.png" width="120" >
            </a>
        </div>
        <div class="ue-bar-nav">
            <ul>
                <li class="active"><a href="index.html">
                    <em>首页</em>
                </a></li>
                <li><a href="#">
                    <em>HELP</em>
                </a></li>
                <li><a href="#">
                    <em>CONNECT US</em>
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




<!--  
<center>
<form  action="register" method="post">
	用户名:<input type="text" name="username" /> 
	密码: <input type="password" name="password"/> 
	邮箱 : <input type="text" name="email" /> 
	<input type="submit" value="注册"/>        		
</form>
</center>
<center>
已有账户？<a href="Login.jsp" class="current">登录</a>
</center>
-->
<div class="container">
	<section id="content">
		<form action="register" method="post">
			<h1>Register</h1>
			<div>
				<input type="text" placeholder="username" name="username" required="required" id="username" />
			</div>
			<div>
				<input type="password" placeholder="password" name="password" required="required" id="password" />
			</div>
			<div>
				<input type="text" placeholder="email" name="email" required="required" id="email" />
			</div>
			<div>
				<input type="submit" value="Register" />
				<a href="Login.jsp">Login</a>
			</div>
		</form><!-- form -->
	</section><!-- content -->
</div><!-- container -->



</body>
</html>