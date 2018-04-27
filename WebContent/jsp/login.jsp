<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Head -->
<head>

	<title>登录表单</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" 	href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>登录页面</h1>

	<div class="container w3layouts agileits">

			<h3>欢 迎 登 录</h3>
			<font  color="white"> <div align="center"> ${msg}</div> </font>	
		    <form  action="${pageContext.request.contextPath}/user_login.action" method="post">
				<input type="text" name="sname" id="sname" placeholder="用户名"required="required" >
				<input type="password" name="sword" id="sword" placeholder="密码" required="required">								
			<div class="send-button w3layouts agileits">			
			<input type="submit" value="登 录">
			</div>
			</form>
			<a href="${pageContext.request.contextPath}/user_toreg.action">注册</a><br/>
			<br/>
			<div class="clear"></div>
	<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
	

		<div class="clear"></div>
		 <div align="center"> <a href="${pageContext.request.contextPath}/user_index.action" >返回</a></div> 
	</div>
 	
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>

</body>
<!-- //Body -->

</html>