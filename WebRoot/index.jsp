<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="style/styles.css">

  </head>
  
  <body>
    <!-- 提交表单数据库验证登录 -->
  <form name="loginForm" action="dologin.jsp" method="post">
  <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  	<tr>
    	<td bgcolor="#e5f6cf">&nbsp;</td>
  	</tr>
  	<tr>
    	<td height="608" background="images/login/login_03.gif">
    	<table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      	<tr>
        	<td height="266" background="images/login/login_04.gif">&nbsp;</td>
      	</tr>
      	<tr>
        	<td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          	<tr>
            <td width="424" height="95" background="images/login/login_06.gif">&nbsp;</td>
            <td width="183" background="images/login/login_07.gif">
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="21%" height="30"><div align="center"><span class="STYLE3">ID</span></div></td>
                <td width="79%" height="30"><input type="text" name="id"  class="STYLE5"></td>
              </tr>
              <tr>
                <td height="30"><div align="center"><span class="STYLE3">密码</span></div></td>
                <td height="30"><input type="password" name="password"  class="STYLE5"></td>
              </tr>
              <tr>
                <td height="30">&nbsp;</td>
                <td height="30"><div align="center">
                <input type="submit" name="login" value="登录" class="btn"/>&nbsp;&nbsp;<a href="register.jsp">注册?</a></div></td>
              </tr>
            </table>
            
            </td>
            <td width="255" background="images/login/login_08.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="images/login/login_09.gif">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">版本 2018V1.0 </td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
</form>
<map name="Map"><area shape="rect" coords="3,3,36,19" href="#"><area shape="rect" coords="40,3,78,18" href="#"></map>
  </body>
</html>
