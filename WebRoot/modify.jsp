<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="style/form.css">

  </head>
  
  <body>
    <form name="modifyForm" action="domodify.jsp" method="post" class="dark-matter">
    	<h1>修改密码</h1>
    	<label>
    		<span>新密码:</span>
    		<input type="password" name="newpassword1" />
    	</label>
    	<label>
    		<span>确认密码:</span>
    		<input type="password" name="newpassword2"/>
    	</label>
    	<label>
    	<br />
    	<br />
    	<span>&nbsp;</span>
    		<input type="submit" value="确定" class="button"/>&nbsp;&nbsp;
    		<input type="reset" value="取消" class="button"/>&nbsp;&nbsp;
    	</label>
    </form>
  </body>
</html>
