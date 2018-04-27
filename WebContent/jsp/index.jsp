<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>

	<title>朋友，想去哪？</title>

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

	<h1>游客意向小助手v1.0</h1>


  
	<div class="container w3layouts agileits">
 

  		<font color="white">  <div align="left"> 当前 ${sessionScope.sname}，您好 </div></font>
		<div class="login w3layouts agileits">
			<h2>旅 游 推 荐</h2>
			
			<font size="5" face="arial" color="#OOFFFF">读万卷书</font>  <br>
			<div><!--  空格 --><br></div>
		    <font size="5" face="arial" color="#OOFFFF">行万里路</font>  <br>
			<div><!--  空格 --><br></div>		
		   <a href="${pageContext.request.contextPath}/place_listpage.action?currentPage=1">有一个地方，只有我们知道。这儿，也许你想去</a><br>	
			<div><!--  空格 --><br></div>	
			<div class="clear"></div>			
		</div>
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>	
		<div class="register w3layouts agileits">
			<div><!--  空格 --><br></div>
			<div><!--  空格 --><br></div>
			<div><!--  空格 --><br></div>
		
			<c:if test="${empty sessionScope.sname}">
		   <div><a href="${pageContext.request.contextPath}/jsp/login.jsp">登录</a><br></div> 
			<div><!--  空格 --><br></div>
		   	<div><!--  空格 --><br></div>	
		    <div><a href="${pageContext.request.contextPath}/jsp/reg.jsp">注册</a><br></div>	
		    
  			
  	
		    <div><!--  空格 --><br></div>
		      </c:if>
	  <c:if test="${not empty sessionScope.sname}">
	  <a href="${pageContext.request.contextPath}/user_logout.action">退出</a><br/>
	  
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