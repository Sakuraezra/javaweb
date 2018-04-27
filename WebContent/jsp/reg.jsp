<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<!-- Head -->
<head>

	<title>注册页面</title>

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

	<h1>欢迎注册新用户</h1>

	<div class="container w3layouts agileits">
			<h2>注 册</h2>
					<font color="red">${msg}</font> 
		 <form action="${pageContext.request.contextPath}/user_reg.action" method="post">	
			 <input type="text" name="sname" id="sname"  placeholder="用户名" required="required"/><br/>
        <!-- 密码输入项 -->
  			 <input  type="password" name="sword" id="sword" placeholder="密码" required="required"/><br/>
        <!--单选输入项  -->
 			<input type="password" name="sword2" id="sword2"placeholder="再次输入密码 " required="required"/><br/>
        <!--重复输入 -->
        <div class="typeradio" align="left">
  		<font color="white"> 
  		性别:  <input type="radio"  name="ssex" value="women" checked/>女
     	    <input type="radio"  name="ssex" value="men"/>男<br/>
     	</font></div>
					
<!-- 	 下拉菜单	<input type="">  -->
		<select name="saddress" id="saddress" required="required">
										     	  <option value="" >请选择你的省市</option>
                                                  <option value="北京市">北京市</option>
                                                  <option value="浙江省">浙江省</option>
                                                  <option value="天津市">天津市</option>
                                                  <option value="安徽省">安徽省</option>
                                                  <option value="上海市">上海市</option>
                                                  <option value="福建省">福建省</option>
                                                  <option value="重庆市">重庆市</option>
                                                  <option value="江西省">江西省</option>
                                                  <option value="山东省">山东省</option>
                                                  <option value="河南省">河南省</option>
                                                  <option value="湖北省">湖北省</option>
                                                  <option value="湖南省">湖南省</option>
                                                  <option value="广东省">广东省</option>
                                                  <option value="海南省">海南省</option>
                                                  <option value="山西省">山西省</option>
                                                  <option value="青海省">青海省</option>
                                                  <option value="江苏省">江苏省</option>
                                                  <option value="辽宁省">辽宁省</option>
                                                  <option value="吉林省">吉林省</option>
                                                  <option value="台湾省">台湾省</option>
                                                  <option value="河北省">河北省</option>
                                                  <option value="贵州省">贵州省</option>
                                                  <option value="四川省">四川省</option>
                                                  <option value="云南省">云南省</option>
                                                  <option value="陕西省">陕西省</option>
                                                  <option value="甘肃省">甘肃省</option>
                                                  <option value="黑龙江省">黑龙江省</option>
                                                  <option value="香港特别行政区">香港特别行政区</option>
                                                  <option value="澳门特别行政区">澳门特别行政区</option>
                                                  <option value="广西壮族自治区">广西壮族自治区</option>
                                                  <option value="宁夏回族自治区">宁夏回族自治区</option>
                                                  <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
                                                  <option value="内蒙古自治区">内蒙古自治区</option>
                                                  <option value="西藏自治区">西藏自治区</option>
		</select>
		 		<input type ="text" name="sage" id="sage"placeholder="年龄" required="required"/><br/>
  					<input type="hidden" name="srank" value="3" />
			<div class="send-button w3layouts agileits">				
				 <input type="reset" value="重置"/>				   
			</div>
			<div class="send-button w3layouts agileits">
				 <input type="submit" value="免费注册">				   
			</div>
		</form>
 <div align="center"> <a href="${pageContext.request.contextPath}/user_index.action" >返回</a></div> 
			<div class="clear"></div>
		</div>
  
		<div class="clear"></div>
	
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>

</body>
<!-- //Body -->

</html>