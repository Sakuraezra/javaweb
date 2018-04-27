<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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

	<h1>欢迎使用</h1>

 

 
  
	<div class="container w3layouts agileits">
	<font color="white">   <div align="left">当前 ${sessionScope.sname}，您好 </div></font>
		<div class="login w3layouts agileits">
			<h2>旅 游 推 荐</h2>
		
		    <a href="${pageContext.request.contextPath}/dltable_plist.action">这儿也许有你想去的</a><br>
			<div><!--  空格 --><br></div>
	
		    <div> <a href="${pageContext.request.contextPath}/dltable_DL.action">有一个地方只有我们知道</a><br></div>   
			<div><!--  空格 --><br></div>		
			<div class="clear"></div>			
		</div>
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>	
		<div class="register w3layouts agileits">
			<div><!--  空格 --><br></div>
		
	

		<div><!--  空格 --><br></div>
		<div><!--  空格 --><br></div>
			<div><!--  空格 --><br></div>
	  <c:if test="${not empty sessionScope.sname}">
	  <a href="${pageContext.request.contextPath}/user_logout.action">退出</a><br/>
	    <a href="${pageContext.request.contextPath}/place_list.action">显示plist</a><br/>
	  </c:if>	 
			 <div class="clear"></div>			
		</div>
	
		<div class="clear"></div>

	</div>
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>

</body>
<!-- //Body -->

</html>