<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 
	<link rel="stylesheet" type="text/css" href="style/form.css">

  </head>
  
  <body>
    <form name="regForm" action="servlet/RegServlet" method="post" class="dark-matter">
    <h1>注册表单</h1>
    <label>
    <span>用户ID:</span>
    <input type="text" name="id" />
    </label>
    <label>
    <span>密码:</span>
    <input type="password" name="password"/>
    </label>
    <label>
    <span>性别:</span>
    <input type="radio" name="gender" checked="checked" value="Male"/>男
    				<input type="radio" name="gender" value="Female"/>女
    </label>
    <label>
    <span>年龄:</span>
    <input type="text" name="age"/>
    </label>
    <label>
    <span>喜爱类型:</span>
    	<input type="checkbox" name="categories" value="comedy"/>喜剧片
    	<input type="checkbox" name="categories" value="action"/>动作片
    	<input type="checkbox" name="categories" value="disaster"/>灾难片
    	<input type="checkbox" name="categories" value="love"/>爱情片
    	<input type="checkbox" name="categories" value="war"/>战争片
    	<input type="checkbox" name="categories" value="terrorist"/>恐怖片
    	<input type="checkbox" name="categories" value="science"/>科幻片
    	<input type="checkbox" name="categories" value="classic"/>经典影片
    </label>
    <label>
    <br />
    <br />
    <span>&nbsp;</span>
    <input type="submit" value="注册" class="button"/>&nbsp;&nbsp;
    <input type="reset" value="取消" class="button"/>&nbsp;&nbsp;
    </label>
    <!-- 
    	<table border="0" width="800" cellspacing="0" cellpadding="0">
    		<tr>
    			<td class="label">用户ID:</td>
    			<td class="controler"><input type="text" name="id"/></td>
    		</tr>
    		<tr>
    			<td class="label">密码:</td>
    			<td class="controler"><input type="password" name="password"/></td>
    		</tr>
    		<tr>
    			<td class="label">性别:</td>
    			<td class="controler"><input type="radio" name="gender" checked="checked" value="Male"/>男
    				<input type="radio" name="gender" value="Female"/>女
    			</td>
    		</tr>
    		<tr>
    			<td class="label">年龄:</td>
    			<td class="controler"><input type="text" name="age"/></td>
    		</tr>
    		<tr>
    			<td class="label">电影类型:</td>
    			<td class="controler">
    				<input type="checkbox" name="categories" value="comedy"/>喜剧片&nbsp;
    				<input type="checkbox" name="categories" value="action"/>动作片&nbsp;
    				<input type="checkbox" name="categories" value="disaster"/>灾难片&nbsp;
    				<input type="checkbox" name="categories" value="love"/>爱情片&nbsp;
    				<input type="checkbox" name="categories" value="war"/>战争片&nbsp;
    				<input type="checkbox" name="categories" value="terrorist"/>恐怖片&nbsp;
    				<input type="checkbox" name="categories" value="science"/>科幻片&nbsp;
    				<input type="checkbox" name="categories" value="classic"/>经典影片&nbsp;
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center">
    				<input type="submit" value="注册"/>&nbsp;&nbsp;
    				<input type="reset" value="取消"/>&nbsp;&nbsp;
    			</td>
    		</tr>
    	</table>
    -->
    </form>
  </body>
</html>
