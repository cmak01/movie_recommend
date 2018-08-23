<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录失败</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="style/styles.css">
	
  </head>
  
  <body>
    <div>
    	<div>
    		<a href="#"><img src="images/login/dang.png" alt="" width="100%" height="60%" /></a>
    	</div>
    	<div id="divlogo" align="center">
    		登录失败！请检查用户ID或者密码！<br/>
    		<a href="index.jsp">返回登录页面......</a>
    	</div>
    </div>
  </body>
</html>
