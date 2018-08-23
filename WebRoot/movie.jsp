<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="per.entity.Movies" %>
<%@ page import="per.dao.MoviesDAO" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电影评价主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="style/default.css">

  </head>
  
  <body>
  <!-- start header -->
  	<div id="header">
  		<div id="logo">
  			<h1><a href="movie.jsp">电影评价<sup></sup></a></h1>
  			<h2>主要用于最近上映电影的点评</h2>
  		</div>
  		<div id="correct">
  			<%
  				String loginUser = "";
    			if(session.getAttribute("loginUser")!=null) {
    				loginUser = session.getAttribute("loginUser").toString();
    			}
  			%>
  			<p>您好，<font class="uname"><%=loginUser %></font><a href="modify.jsp">[修改密码]</a></p>
  		</div>
  		<div id="menu">
  			<ul>
  				<li class="active"><a href="movie.jsp">喜剧片</a></li>
  				<li><a href="movie.jsp">动作片</a></li>
  				<li><a href="movie.jsp">灾难片</a></li>
  				<li><a href="movie.jsp">爱情片</a></li>
  				<li><a href="movie.jsp">战争片</a></li>
  				<li><a href="movie.jsp">恐怖片</a></li>
  				<li><a href="movie.jsp">科幻片</a></li>
  				<li><a href="movie.jsp">经典影片</a></li>
  			</ul>
  		</div>
  	</div>
  <!-- end header -->
  <!-- start page -->
  <div id="page">
  	<!-- start content -->
  	<div id="content">
  		<div class="post">
  			<h1 class="title">电影列表</h1>
  			<ol>
  				<%
  					MoviesDAO mDao = new MoviesDAO();
  					List<Movies> allMovies = mDao.getAllMovies();
  					if(allMovies != null) {
  						for(int i=0; i<allMovies.size(); i++) {
  				%>
  				<li><a href="detail.jsp?movieID=<%=allMovies.get(i).getId() %>" class="a-1"><%=allMovies.get(i).getMoviename() %></a><font color="red"><%=allMovies.get(i).getReleasetime() %></font></li>
  				<%			
  						}
  					}
  				%>
  				<!-- 
  				<li><a href="#" class="a-1">千与千寻</a><font color="red">2018-05-01</font></li>
  				<li><a href="#" class="a-1">千与千寻</a><font color="red">2018-05-01</font></li>
  				<li><a href="#" class="a-1">千与千寻</a><font color="red">2018-05-01</font></li>
  				-->
  			</ol>
  		</div>
  	</div>
  	<!-- end content -->
  	<!-- start sidebar -->
  	<div id="sidebar">
  		<ul>
  			<li id="search">
  				<h2><b class="text1">Search</b></h2>
  				<form method="get" action="">
  					<fieldset>
  					<input type="text" id="s" name="s" value="" />
  					<input type="submit" id="x" value="查找" />
  					</fieldset>
  				</form>
  			</li>
  			<li>
  				<h2><strong>评分Top</strong> 7</h2>
  				<ul>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  				</ul>
  			</li>
  			<li>
  				<h2><strong>类型Top</strong> 7</h2>
  				<ul>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  					<li><a href="">肖生克的救赎</a></li>
  				</ul>
  			</li>
  		</ul>
  	</div>
  	<!-- end sidebar -->
  	<div style="clear: both;">&nbsp;</div>
  </div>
  <!-- end page -->
  <!-- start footer -->
  <div id="footer">
  	<p id="legal">(c) 2018 电影评价V1。版权归陈志文所有！</p>
  </div>
  <!-- end footer -->
  </body>
</html>
