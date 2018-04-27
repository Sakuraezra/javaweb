<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
   <base href="<%=basePath%>">
    
    <title>深度学习</title>
  

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 		  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> -->
	
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

  <script type="text/javascript">
 
        function validate()
        {
            var page = document.getElementsByName("page")[0].value;          
            if(page > <s:property value="#request.pageBean.tp"/>)
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");   
                window.document.location.href = "PlaecAction";   
                return false;
            }        
            return true;
        }
    </script>



	<!-- Style --> <link rel="stylesheet" 	href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">

  
 </head>
  
<body>
    <br>
    
    <h3 align="center">what about you~</h3>
    		<font color="white">  <div align="left"> 当前 ${sessionScope.sname}，您好 </div></font>
    
	<div class="container w3layouts agileits">
	
		<!-- 
		给一个训练的action  和配图
		 -->
 <div><a href="${pageContext.request.contextPath}/dltable_traintree.action"><img src='<c:url value='/images/Tbutton.jpg'/>' border="0"  alt="train" /> </a></div>
     
 
 <div align="right"> <a href="${pageContext.request.contextPath}/user_index.action" >返回</a></div> 
  		

     <br>
			<div class="clear"></div>			
		</div>
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>	
		
	
		<div class="clear"></div>

	</div>

	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>
    
 
  </body>
</html>