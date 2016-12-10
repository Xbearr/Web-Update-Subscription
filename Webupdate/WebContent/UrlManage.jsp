<%@ page language="java" import="com.updater.action.ViewUrl" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/style.css">
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
<<<<<<< HEAD
                <li><a href='<s:url action="returnindex">
					<s:param name="username" value="username"/> 
						</s:url>'>
                    <em>INDEX</em>
                </a></li>
                <li class="active"><a class="active" href='<s:url action="returnindex">
						<s:param name="username" value="username"/> 
							</s:url>'>
                    <em>URLS</em>
                </a></li>
                <li><a href="#">
                    <em>HELP</em>
                </a></li>
                <li><a href='<s:url action="returncontact">
						<s:param name="username" value="username"/> 
							</s:url>'>
                    <em>Contact US</em>
                </a></li>
            </ul>
=======
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
>>>>>>> 1140310317
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


<center>
<a href='<s:url action="adddd">
			                     <s:param name="username" value="username"/> 
			                     </s:url>'>添加url</a>

	
<a href='<s:url action="returnindex">
<s:param name="username" value="username"/> 
</s:url>'>返回主页</a>

</center>

<div id="container">

<!-- Start Tabs !-->

<div class="tab-container">

<!-- Use c + the tab number or any other identifier you'd like when creating a new tab, just keep them in order.  You can have an unlimited number of tabs !-->
	<div class="title">
		<p>Active Jobs</p>
    </div>
	<s:iterator value="Uurl" id="urls" status="ss">
		<s:if test='#urls.active==1'>
		<div id="c2">
			<div class="tab-content"> <!-- tab-container > div > div in the CSS !-->
				<form  action="changeurlinf" method="post">
					用户名:<input type="text" name="username" value="<s:property value="#urls.username"/>" readonly="readonly"/> 
					id:<input type="text" name="id" value="<s:property value="#urls.id"/>" readonly="readonly"/> 
					url: <input type="text" name="url" value="<s:property value="#urls.url"/>" /> 
					更新间隔: <input type="text" name="interval"  value="<s:property value="#urls.interval"/>" /> 
					更新标准（%）: <input type="text" name="percent" value="<s:property value="#urls.percent"/>" /> 
					<input type="submit" value="修改"/>        		
				</form>
            </div>
	</div>
	<div id="<s:property value="#urls.id"/>">
		<a href="#<s:property value="#urls.id"/>" ><s:property value="#urls.id"/></a> <!-- This is your actual tab and the content is below it !-->
			<div class="tab-content">  <!-- tab-container > div > div in the CSS !-->
						<table border="0">
						  	<tr>
							    <th scope="row">Id:</th>
							    <td><B><s:property value="#urls.id"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">Url:</th>
							    <td><B><s:property value="#urls.url"/></B></td>
							  </tr>
							  <s:if test='#urls.active==1'>
							  <tr><input type="button" value="Active!">
							    <th scope="row">active:</th>
							    <td><B><s:property value="#urls.active"/></B></td>
							  </tr></s:if>
							  <tr>
							    <th scope="row">间隔:</th>
							    <td><B><s:property value="#urls.interval"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">百分比:</th>
							    <td><B><s:property value="#urls.percent"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">最近更新时间:</th>
							    <td><B><s:property value="#urls.time"/></B></td>
							  </tr>
						 </table>
						 <center>
						 		<a href='#c2'>修改信息</a>
						    	<a href='<s:url action="deleteurl">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>删除</a>
						</center>
	                	<br/>
	                	<br/>
				
             </div>
		</div>
		</s:if>
	</s:iterator>

	<div class="title">
		<p>Inactive Jobs</p>
    </div>
	<s:iterator value="Uurl" id="urls" status="ss">
		<s:if test='#urls.active==0'>
		<div id="<s:property value="#urls.id"/>">
			<a href="#<s:property value="#urls.id"/>" ><s:property value="#urls.id"/></a> <!-- This is your actual tab and the content is below it !-->
				<div class="tab-content">  <!-- tab-container > div > div in the CSS !-->
					
						<table border="0">
						  	<tr>
							    <th scope="row">Id:</th>
							    <td><B><s:property value="#urls.id"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">Url:</th>
							    <td><B><s:property value="#urls.url"/></B></td>
							  </tr>
							  <tr>
							  <s:if test='#urls.active==1'>
							  <tr><input type="button" value="Active!">
							    <th scope="row">active:</th>
							    <td><B><s:property value="#urls.active"/></B></td>
							  </tr></s:if>
							  <tr>
							    <th scope="row">active:</th>
							    <td><B><s:property value="#urls.active"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">间隔:</th>
							    <td><B><s:property value="#urls.interval"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">百分比:</th>
							    <td><B><s:property value="#urls.percent"/></B></td>
							  </tr>
							  <tr>
							    <th scope="row">最近更新时间:</th>
							    <td><B><s:property value="#urls.time"/></B></td>
							  </tr>
						 </table>
						 <center>
						 		<a href='#c2'>修改信息</a>
						    	<a href='<s:url action="deleteurl">
			                     <s:param name="id" value="#urls.id"/> 
			                     </s:url>'>删除</a>
						</center>
	                	<br/>
	                	<br/>
				
             </div>
		</div>
	</s:if>
	</s:iterator>
<div id="c1">
		<a href="#c1" title="First">ADDURL</a> <!-- This is your actual tab and the content is below it !-->
			<div class="tab-content">  <!-- tab-container > div > div in the CSS !-->
			<form  action="addurl" method="post">
				用户名:<input type="text" name="username" value="<s:property value="username"/> " readonly="readonly"/> 
				url: <input type="text" name="url"/> 
				更新间隔: <input type="text" name="interval" /> 
				更新标准（%）: <input type="text" name="percent" />
				 <input type="hidden" name="active" value="1"/>
				<input type="submit" value="添加"/>        		
			</form>
             </div>
	</div>
<div id="c0">
			<div class="tab-content"> <!-- Having a hidden or opening tab is ideal when you don't want last tab to always show first when loading the page !-->
            <h3>98765</h3>
            </div>
	</div>
</div><!-- Tab Container !-->


</div><!-- Container !-->


</body>
</html>