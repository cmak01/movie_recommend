<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//解决中文乱码
%>
<jsp:useBean id="loginUser" class="per.entity.Users" scope="page"/>
<jsp:useBean id="userDAO" class="per.dao.UserDAO" scope="page"/>
<jsp:setProperty name="loginUser" property="id"/>
<jsp:setProperty name="loginUser" property="password"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	//如果数据库中有此用户名和密码，则登录成功
	if(userDAO.userLogin(loginUser)) {
		session.setAttribute("loginUser", loginUser.getId());
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	}
	else {
		response.sendRedirect("login_failure.jsp");
	}
%>