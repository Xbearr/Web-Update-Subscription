<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link type="text/css" rel="stylesheet" href="css/mod.css"> 
<title>Manage Your Url</title>
</head>
<body>
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
                <li><a href='<s:url action="returnindex">
					<s:param name="username" value="username"/> 
						</s:url>'>
                    <em>INDEX</em>
                </a></li>
                <li><a href='<s:url action="returnindex">
						<s:param name="username" value="username"/> 
							</s:url>'>
                    <em>URLS</em>
                </a></li>
                <li><a href='<s:url action="addjob">
			       	<s:param name="username" value="username"/> 
			        </s:url>'>
                <em>Addjobs</em>
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
    	<h1>Account-Setting</h1>
        <div class="helpmod-faq-user">
        	<form  action="changeuserinf" method="post">
        		<p><input type="hidden" name="username" value="<s:property value="username"/> " readonly="readonly"/></p>
				<p>Username&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp&nbsp&nbsp&nbsp<s:property value="username"/></p>
				<p>Account-email&nbsp&nbsp: &nbsp&nbsp&nbsp&nbsp<input type="text" style="font-size:20px;font-family:Tahoma;" name="email"  value=" <s:property value="user.email"/> "/></p>
				<p>old password&nbsp&nbsp&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp&nbsp<input type="password" style="font-size:20px;font-family:Tahoma;" name="password"   required="required" placeholder=" 必填"/> </p>
				<p>new password&nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp&nbsp<input type="password" style="font-size:20px;font-family:Tahoma;" name="newpassword"   placeholder=" 如不修改密码请留空"/> </p>
				<p>Ps：如果要修改邮箱，必须提供密码&nbsp&nbsp</p>
				<p><span style="display:block; text-align:right" ><input type="submit" style="font-size:20px;font-family:Tahoma;" value="Save"/></p>   		
			</form>
        </div>
	</div>
</body>
</html>