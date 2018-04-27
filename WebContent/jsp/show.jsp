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
    
    <title>数据显示页面</title>
  

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
   	<div class="container w3layouts agileits"> 
    <h3 align="center">景区列表</h3>
    <font color="white">  <div align="left"> 当前 ${sessionScope.sname}，您好 </div></font> 

	 <font color="white"> 	
	<table border="1" width="70%" bordercolor="yellow" align="center">
	
	<tr>
		
		<th>景点名</th>
		<th>可容纳人数</th>
		<th>预计人数</th>
		<th>描述</th>
	</tr>
	
    <c:forEach items="${pageBean.list}" var="place">
	<tr>
		<td>${place.pname}</td>
		<td>${place.pnumN}</td>
		<td>${place.pnumS}</td>
		<td>${place.prank} </td>
	</tr>
</c:forEach>
	 </font> 
    </table>
    <br/>
    共[<B>${pageBean.totalCount}</B>]条记录,共[<B>${pageBean.totalPage}</B>]页，当前第[<b>${pageBean.currentPage}</b>]页
    
    <!--  
    		前一页: 当前页-1
    		如果第一页 没有前一页
     -->    
     <c:if test="${pageBean.currentPage!=1}">
    [<A href ="${pageContext.request.contextPath}/place_listpage.action?currentPage=${pageBean.currentPage-1}">上一页</A>]
    </c:if>
     <!--  
    		后一页： 当前页+1
    		如果最后最后一页 没有后一页
     -->
      <c:if test="${pageBean.currentPage!=pageBean.totalPage}">
     [<A href ="${pageContext.request.contextPath}/place_listpage.action?currentPage=${pageBean.currentPage+1}">下一页</A>]
  	  </c:if>
  	  
 <div align="center"> <a href="${pageContext.request.contextPath}/user_index.action" >返回</a></div>
			<div class="clear"></div>			
		</div>	
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>		



	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>
    
  </body>
</html>