<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="userDAO" class="per.dao.UserDAO" scope="page"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	request.setCharacterEncoding("UTF-8");
	
	String newpassword1 = request.getParameter("newpassword1");
	String newpassword2 = request.getParameter("newpassword2");
	
	if(newpassword1.equals(newpassword2)) {
		//两次输入密码相等，执行更新语句
		String loginUser = "";
    	if(session.getAttribute("loginUser")!=null) {
    		loginUser = session.getAttribute("loginUser").toString();
    	}
		if(userDAO.userMod(newpassword1, loginUser)) {
			response.sendRedirect("mod_success.jsp");
		}
		else {
			//执行插入语句失败的情况
			response.sendRedirect("mod_failure.jsp?code=1");
		}
	}
	else {
		//两次密码不相等时的情况
		response.sendRedirect("mod_failure.jsp?code=2");
	}
%>
