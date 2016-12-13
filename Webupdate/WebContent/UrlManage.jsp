<%@ page language="java" import="com.updater.action.ViewUrl" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link type="text/css" rel="stylesheet" href="css/mod.css">
<title>Manage Your Url</title>
<%  int a=0;int b=0;
%>
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
               	<li class="active"><a class="active" href='<s:url action="viewurl">
			       	<s:param name="username" value="username"/> 
			        </s:url>'>
                <em>URLS</em>
                </a></li>
                <li><a href='<s:url action="addjob">
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


<th></th>
<th></th>
<div id="container">

<!-- Start Tabs !-->

<div class="tab-container">

<!-- Use c + the tab number or any other identifier you'd like when creating a new tab, just keep them in order.  You can have an unlimited number of tabs !-->
	<!-- 激活的url -->
	<div class="title">
		<p>Active Jobs &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspJob Detail</p>
    </div>
	<s:iterator value="Uurl" id="urls" status="ss">
	<s:if test='#urls.active==1'>
		<% a=1; %>
	<div id="<s:property value="#urls.id"/>">
		<a href="#<s:property value="#urls.id"/>" ><s:property value="#urls.url.substring(0,40)"/></a> <!-- This is your actual tab and the content is below it !-->
			<div class="helpmod-faq-user">  <!-- tab-container > div > div in the CSS !-->
				<form action="active" method="post">
						<input type="hidden" name="username" value="<s:property value="#urls.username"/>" /> 
						<input type="hidden" name="id" value="<s:property value="#urls.id"/>" />
						<input type="hidden" name="url" value="<s:property value="#urls.url"/>" />
						<input type="hidden" name="interval" value="<s:property value="#urls.interval"/>" />
						<input type="hidden" name="percent" value="<s:property value="#urls.percent"/>" />
						<input type="hidden" name="active" value="0"/>
						<p><input type="submit"  style="font-size:20px;font-family:Tahoma;" value="rest">&nbsp&nbsp(！小心，按下后，设定的job会休眠)</p>
				</form>
				<form  action="changeurlinf" method="post">
					<input type="hidden" name="username" value="<s:property value="#urls.username"/>" readonly="readonly"/> 
					<input type="hidden" name="id" value="<s:property value="#urls.id"/>" readonly="readonly"/>
					<input type="hidden" name="active" value="1"/>
					<p>url: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="url" style="font-size:20px;font-family:Tahoma;" value="<s:property value="#urls.url"/>" /> 
					<p>CHECK INTERVAL: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="interval">
						<s:if test='#urls.interval==60'><option value="60" selected="selected">1 mins</option></s:if><s:else><option value="60">1 mins</option></s:else>
						<s:if test='#urls.interval==900'><option value="900" selected="selected">15 mins</option></s:if><s:else><option value="900">15 mins</option></s:else>
						<s:if test='#urls.interval==1800'><option value="1800" selected="selected">30 mins</option></s:if><s:else><option value="1800">30 mins</option></s:else>
						<s:if test='#urls.interval==3600'><option value="3600" selected="selected">1 hours</option></s:if><s:else><option value="3600">1 hours</option></s:else>
						<s:if test='#urls.interval==7200'><option value="7200" selected="selected">2 hours</option></s:if><s:else><option value="7200">2 hours</option></s:else>
						<s:if test='#urls.interval==14400'><option value="14400" selected="selected">4 hours</option></s:if><s:else><option value="14400">4 hours</option></s:else>
						<s:if test='#urls.interval==21600'><option value="21600" selected="selected">6 hours</option></s:if><s:else><option value="21600">6 hours</option></s:else>
						<s:if test='#urls.interval==43200'><option value="43200" selected="selected">12 mins</option></s:if><s:else><option value="43200">12 hours</option></s:else>
						<s:if test='#urls.interval==86400'><option value="86400" selected="selected">1 days</option></s:if><s:else><option value="86400">1 days</option></s:else>
						</select></p>
					<p>EMAIL-TRIGGER&nbsp&nbsp&nbsp: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="percent">
						<s:if test='#urls.percent==1'><option value="1" selected="selected">Tiny</option></s:if><s:else><option value="1">Tiny</option></s:else>
						<s:if test='#urls.percent==2'><option value="2" selected="selected">Normal</option></s:if><s:else><option value="2">Normal</option></s:else>
						<s:if test='#urls.percent==3'><option value="3" selected="selected">Major</option></s:if><s:else><option value="3">Major</option></s:else>
						</select></p> 
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="submit" value="确认修改"/></p>	
				</form>
             </div>
		</div>
		</s:if>
	</s:iterator>
	<% if (a==0) { %>
		<h></h>
	<%}%>
	<s:if test='ttt==0'>
		<h></h>
	</s:if>
	<!-- 非激活的url -->
	<div class="title">
		<p>Inactive Jobs</p>
    </div>
	<s:iterator value="Uurl" id="urls" status="ss">
		<s:if test='#urls.active==0'>
		<% b=1; %>
		<div id="<s:property value="#urls.id"/>">
			<a href="#<s:property value="#urls.id"/>" ><s:property value="#urls.url.substring(0,40)"/></a> <!-- This is your actual tab and the content is below it !-->
				<div class="helpmod-faq-user">  <!-- tab-container > div > div in the CSS !-->
				<form  action="changeurlinf" method="post">
					<form action="active" method="post">
						<input type="hidden" name="username" value="<s:property value="#urls.username"/>" /> 
						<input type="hidden" name="id" value="<s:property value="#urls.id"/>" />
						<input type="hidden" name="url" value="<s:property value="#urls.url"/>" />
						<input type="hidden" name="interval" value="<s:property value="#urls.interval"/>" />
						<input type="hidden" name="percent" value="<s:property value="#urls.percent"/>" />
						<input type="hidden" name="active" value="1"/>
						<p><input type="submit"  style="font-size:20px;font-family:Tahoma;" value="Active"></p>
					</form>
					<input type="hidden" name="username" value="<s:property value="#urls.username"/>" readonly="readonly"/> 
					<input type="hidden" name="id" value="<s:property value="#urls.id"/>" readonly="readonly"/>
					<input type="hidden" name="active" value="0"/>
					<p>url: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="url" style="font-size:20px;font-family:Tahoma;" value="<s:property value="#urls.url"/>" /> 
					<p>CHECK INTERVAL: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="interval">
						<s:if test='#urls.interval==60'><option value="60" selected="selected">1 mins</option></s:if><s:else><option value="60">1 mins</option></s:else>
						<s:if test='#urls.interval==900'><option value="900" selected="selected">15 mins</option></s:if><s:else><option value="900">15 mins</option></s:else>
						<s:if test='#urls.interval==1800'><option value="1800" selected="selected">30 mins</option></s:if><s:else><option value="1800">30 mins</option></s:else>
						<s:if test='#urls.interval==3600'><option value="3600" selected="selected">1 hours</option></s:if><s:else><option value="3600">1 hours</option></s:else>
						<s:if test='#urls.interval==7200'><option value="7200" selected="selected">2 hours</option></s:if><s:else><option value="7200">2 hours</option></s:else>
						<s:if test='#urls.interval==14400'><option value="14400" selected="selected">4 hours</option></s:if><s:else><option value="14400">4 hours</option></s:else>
						<s:if test='#urls.interval==21600'><option value="21600" selected="selected">6 hours</option></s:if><s:else><option value="21600">6 hours</option></s:else>
						<s:if test='#urls.interval==43200'><option value="43200" selected="selected">12 mins</option></s:if><s:else><option value="43200">12 hours</option></s:else>
						<s:if test='#urls.interval==86400'><option value="86400" selected="selected">1 days</option></s:if><s:else><option value="86400">1 days</option></s:else>
						</select></p> 
					<p>EMAIL-TRIGGER&nbsp&nbsp&nbsp: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="percent">
						<s:if test='#urls.percent==1'><option value="1" selected="selected">Tiny</option></s:if><s:else><option value="1">Tiny</option></s:else>
						<s:if test='#urls.percent==2'><option value="2" selected="selected">Normal</option></s:if><s:else><option value="2">Normal</option></s:else>
						<s:if test='#urls.percent==3'><option value="3" selected="selected">Major</option></s:if><s:else><option value="3">Major</option></s:else>
						</select></p>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="submit" value="确认修改"/></p>    
					<p><a href='<s:url action="deleteurl">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>删除!</a></p>		
				</form>
             </div>
		</div>
	</s:if>
	</s:iterator>
	<% if (b==0) { %>
		<h></h>
	<%}%>
	<!-- 当做挡板 -->
	<div id="c0">
			 <!-- Having a hidden or opening tab is ideal when you don't want last tab to always show first when loading the page !-->
            	<div class="helpmod-faq-user">
            	<p>&nbsp</p>
            	<form  action="changeurlinf" method="post">
					<input type="hidden" name="username"  readonly="readonly"/> 
					<input type="hidden" name="id"  readonly="readonly"/>
					<input type="hidden" name="active" value="1"/>
					<p>url: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="url" style="font-size:20px;font-family:Tahoma;" value="<s:property value="#urls.url"/>" /> 
					<p>CHECK INTERVAL: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="interval">
						<option value="60" selected="selected">----</option>
						</select></p> 
					<p>EMAIL-TRIGGER&nbsp&nbsp&nbsp: 
					<select style="font-size:20px;font-family:Tahoma;Tahoma;width:100px;" name="percent">
						<option value="1" selected="selected">----</option>
						</select></p> 
				
				</form>
            	</div>
            
	</div>
</div><!-- Tab Container !-->


</div><!-- Container !-->


</body>
</html>