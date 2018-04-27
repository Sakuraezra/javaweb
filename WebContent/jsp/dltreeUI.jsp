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
    
    
	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
				<font  color="red"> <div align="left"> ${msg}</div> </font>
			<font color="white">  <div align="left"> 当前 ${sessionScope.sname}，您好 </div></font>
		<font color="white">
				 请输入您的意向.  
     <form  action="${pageContext.request.contextPath}/dltable_input.action" method="post">
  		   <!-- 普通输入项 -->
    
  	
         <div>年 龄   ：  <input type="text" name="age" id="age" placeholder="年龄"  required="required"/></div> <br/>    
  		 <div>收 入   ：  <input type="radio"  name="income" value="High"/>大款       <input type="radio"  name="income" value="Middle"/>中产    <input type="radio"  name="income" value="Low"/>小资    <br/></div>
  		 <div>距 离   ：  <input type="radio"  name="distance" value="Far"/>好远           <input type="radio"  name="distance" value="Medium"/>还可以      <input type="radio"  name="distance" value="Near"/>隔壁  <br/> </div> 
  		 <div>天 气   ：  <input type="radio"  name="weather" value="Sunny"/>晴                  <input type="radio"  name="weather" value="Rain"/>雨<br/></div>
  		     	<select name="province" id="province" required="required">
										     	  <option value="" >请选择你的省市</option>
                                                  <option value="北京">北京市</option>
                                                  <option value="杭州">浙江省</option>
                                                  <option value="天津">天津市</option>
                                                  <option value="合肥">安徽省</option>
                                                  <option value="上海">上海市</option>
                                                  <option value="福州">福建省</option>
                                                  <option value="重庆">重庆市</option>
                                                  <option value="南昌">江西省</option>
                                                  <option value="济南">山东省</option>
                                                  <option value="郑州">河南省</option>
                                                  <option value="武汉">湖北省</option>
                                                  <option value="长沙">湖南省</option>
                                                  <option value="广州">广东省</option>
                                                  <option value="海口">海南省</option>
                                                  <option value="太原">山西省</option>
                                                  <option value="西宁">青海省</option>
                                                  <option value="南京">江苏省</option>
                                                  <option value="沈阳">辽宁省</option>
                                                  <option value="长春">吉林省</option>
                                                  <option value="台北">台湾省</option>
                                                  <option value="石家庄">河北省</option>
                                                  <option value="贵阳">贵州省</option>
                                                  <option value="成都">四川省</option>
                                                  <option value="昆明">云南省</option>
                                                  <option value="西安">陕西省</option>
                                                  <option value="兰州">甘肃省</option>
                                                  <option value="哈尔滨">黑龙江省</option>
                                                  <option value="香港">香港特别行政区</option>
                                                  <option value="澳门">澳门特别行政区</option>
                                                  <option value="南宁">广西壮族自治区</option>
                                                  <option value="银川">宁夏回族自治区</option>
                                                  <option value="乌鲁木齐">新疆维吾尔自治区</option>
                                                  <option value="呼和浩特">内蒙古自治区</option>
                                                  <option value="拉萨">西藏自治区</option>
		</select>
  		 <input type="submit" class="button" value="提交"/>   
		<div align="center"> <a href="${pageContext.request.contextPath}/user_index.action" >返回</a></div> 
 	
    </form>
     </font> 
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