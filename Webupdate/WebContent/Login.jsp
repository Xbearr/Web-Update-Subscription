<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/login.css">
<title>Login</title>
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


<!--  

<form  class="form" action="login" method="post">
	<center>Login</center><br/><br/><br/>
	<input class="text" type="text" name="username" /><label ><h2>用户名</h2></label><br/><br/><br/>
	<input class="text" type="password" name="password"/><label ><h2>密码</h2></label><br/><br/><br/><br/>
	<a href="Register.jsp" class="current">还没有账户？</a>  
	<input class="button gray bigrounded" type="submit" value="登录"/>   
			
</form>
-->

<div class="container">
	<section id="content">
		<form action="login" method="post">
			<h1>Login</h1>
			<div>
				<input type="text" placeholder="username" required="required" name="username" id="username" />
			</div>
			<div>
				<input type="password" placeholder="password" required="required"  name="password" id="password" />
			</div>
			<a href = "" style = "padding:0px 0px 0px 18px" onclick = "window.open('forgetPassword.jsp')">忘记密码？</a>
			<div>
				<input type="submit"  value="Log in" />
				<a href="Register.jsp">Register</a>
			</div>
		</form><!-- form -->
	</section><!-- content -->
</div><!-- container -->





</body>
</html>