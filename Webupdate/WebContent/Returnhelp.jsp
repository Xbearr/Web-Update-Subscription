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
                	<li><a href='<s:url action="addjob">
			       		<s:param name="username" value="username"/> 
			        	</s:url>'>
               	 	<em>AddJobs</em>
                	</a></li>
                	<li class="active"><a class="active" href='<s:url action="returnhelp">
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
    
    <!-- help内容 -->
    <div class="helpmod">
    	<h1>Frequently asked questions</h1>
        <div class="helpmod-faq">
       		<div class="title">
       			<p>What is updater?</p>
       		</div>
       		<div class="body">
       			<p>updater是一个用于监视网站更新的webapps。方便且易于使用</p>
       			<p>当您设定好了所监视的页面后，只需一键便可完成监视</p>
       			<p>当用户所设定的页面更新后，用户会收到一封邮件，上面描述了发生变化的网页和它的更新的比例</p>
       		</div>
       	</div>
       	<div class="helpmod-faq">
       		<div class="title">
       			<p>What can I use it for?</p>
       		</div>
       		<div class="body">
       			<p>通常我们可以使用它来做一下这些事：</p>
       			<p>-关注的商品价格和优惠更改</p>
       			<p>-来自你关注的公司的工作机会</p>
       			<p>-关注的新闻和文章</p>
       			<p>-政府金融法规的改变</p>
       			<p>-来自财经和保险公司的报告</p>
       			<p>-竞争对手的网站更新</p>
       		</div>
       	</div>
       	<div class="helpmod-faq">
       		<div class="title">
       			<p>How does it work?</p>
       		</div>
       		<div class="body">
       		<p>按照以下步骤：</p>
       		<p>-1.输入关注的网站地址</p>
       		<p>-2.选择触发器的时间间隔和比例</p>
       		<p>-3.输入你的email地址</p>
       		<p>-4.最终创建任务，完成操作</p>
       		<p>你可以随时查看并且管理你创建的任务</p>
       		</div>
       	</div>
       	<div class="helpmod-faq">
       		<div class="title">
       			<p>setting problem</p>
       		</div>
       		<div class="body">
       		<p>(1).触发器的不同比例代表着什么</p>
       		<p>&nbsp&nbsp&nbspTiny为少量改动，例如文章阅读数量或商品价格</p>
       		<p>&nbsp&nbsp&nbspnormal为一般改动，通常是增加了一篇博客或者增加了一些功能</p>
            <p>&nbsp&nbsp&nbspmajor为大量改动，通常是大幅度修改，比如多篇文章或者网站整改</p>
       		<p>(2).触发器的时间设定是什么意思</p>
       		<p>&nbsp&nbsp&nbsp代表着从当前时间起每次检查时间的间隔，例如现在是六点，时间间隔设定为30min，则每隔30min会检查一次你所设定的任务</p>
       		<p>(3).收到的邮件太多怎么办</p>
       		<p>&nbsp&nbsp&nbsp-1.增加触发器的触发比例</p>
       		<p>&nbsp&nbsp&nbsp-2.增加触发器的时间间隔</p>
       		</div>
       	</div>
   </div>
    

</body>
</html>