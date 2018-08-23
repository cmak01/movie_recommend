<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 
	<link rel="stylesheet" type="text/css" href="style/styles.css">
	-->
  </head>
  
  <body>
    <div>
    	<div>
    		<a href="#"><img src="images/login/dang.png" alt="" width="100%" height="60%" /></a>
    	</div>
    	<div align="center">
    		<%
    			String loginUser = "";
    			if(session.getAttribute("loginUser")!=null) {
    				loginUser = session.getAttribute("loginUser").toString();
    			}
    		 %>
    		欢迎您<font color="red"><%=loginUser %></font>，登录成功！<br/>
    		<a href="movie.jsp">跳到主页......</a>
    	</div>
    </div>
  </body>
</html>
