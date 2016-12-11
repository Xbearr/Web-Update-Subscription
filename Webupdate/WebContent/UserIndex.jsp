<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<script language="Javascript" type="text/javascript"> 
setInterval("timer.innerHTML=new Date().toLocaleString()"); 
        window.onload = function (){
  setInterval("timer.innerHTML=new Date().toLocaleString()",1000); 
  }
</script>


<head>
	<title>welcome</title>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/login.css">

</head>



<body  >
<div class="ue-bar">
    <div class="ue-bar-warp">
        <div class="ue-bar-logo">
            <a href='<s:url action="returnindex">
				<s:param name="username" value="username"/> 
					</s:url>'>
                <img src="images/logo1.png" width="150" >
            </a>
        </div>
        <div class="ue-bar-nav">
            <ul>
	        	<li class="active"><a class="active" href='<s:url action="returnindex">
					<s:param name="username" value="username"/> 
					</s:url>'>
                <em>INDEX</em>
               	</a></li>
               	<li><a href='<s:url action="viewurl">
			      	<s:param name="username" value="username"/> 
			        </s:url>'>
                <em>URLS</em>
                </a></li>
                <li><a href='<s:url action="addjob">
			       	<s:param name="username" value="username"/> 
			        </s:url>'>
                <em>Addjobs</em>
                </a></li>
                <li><a href='<s:url action="returnhelp">
					<s:param name="username" value="username"/> 
					</s:url>'>
	            <em>HELP</em>
	            </a></li>
				<li><a href='<s:url action="returncontact">
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
                <img src="http://quc.qhimg.com/dm/20_20_80/t014987b2ab2e751b14.png" class="avatar"></img>
           		<a class="a1" href='<s:url action="viewuser">
				<s:param name="username" value="username"/> 
				</s:url>'><s:property value="username"/>  </a>
				<a class="a2" href="index.jsp" class="current">注销</a>
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
	 <a class="button gray bigrounded" href='<s:url action="viewurl">
			                     <s:param name="username" value="username"/> 
			                     </s:url>'>Let's Begin</a>
</div>
</body>

</html>