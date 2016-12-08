<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<script language="Javascript" type="text/javascript"> 
setInterval("timer.innerHTML=new Date().toLocaleString()"); 
        window.onload = function (){
  setInterval("timer.innerHTML=new Date().toLocaleString()",1000); 
  }
</script>
<head lang="en">
    <meta charset="UTF-8">
    <title>Welcome to Updater!</title>
    <link type="text/css" rel="stylesheet" href="css/navigation.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body >
 
<div class="ue-bar">
    <div class="ue-bar-warp">
        <div class="ue-bar-logo">
            <a href="index.jsp">
                <img src="images/logo1.png" width="150" >
            </a>
        </div>
        <div class="ue-bar-nav">
            <ul>
                <li class="active"><a class="active" href="index.jsp">
                    <em>INDEX</em>
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
                <a href="#">æ¢è¤
                    <span class="ico"></span>
                </a>
            </li>
            -->
            <li class="login">
                <img src="http://quc.qhimg.com/dm/20_20_80/t014987b2ab2e751b14.png" class="avatar">
                <a class="a1" href="Login.jsp">
                    登录
                </a>
                <a class="a2" href="Register.jsp">
                   注册
                </a>
            </li>
        </ul>
    </nav>
    </div>
</div>
<div class="banner-info">
    <h2>Webpage Updater</h2>
	 <p>We monitor webpages... so you don't have to!</p>
	 <br/><br/>
	 <div class="time" id="timer"></div>
	 <br/><br/>
	 <a href="Login.jsp" class="button gray bigrounded">Let's Begin</a> 
	 
</div>
<!--  <img src= "http://cssdeck.com/uploads/media/items/8/8bcLQqF.png"/>
-->
</body>
</html>