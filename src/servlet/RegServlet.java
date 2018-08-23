/**
 * @Title: RegServlet.java
 * @Package servlet
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-2 下午2:01:20
 * @version V1.0
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import per.entity.Users;
import per.dao.UserDAO;

/**
 * @ClassName: RegServlet
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-2 下午2:01:20
 *
 */
public class RegServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = "";
		String password = "";
		String gender = "";
		String moviecat = "";
		int age = 0;
		StringBuilder cat = new StringBuilder();
		
		try {
			id = request.getParameter("id");
			password = request.getParameter("password");
			gender = request.getParameter("gender");
			age = Integer.parseInt(request.getParameter("age"));
		
			String[] categories = request.getParameterValues("categories");
			for(String s : categories) {
				cat = cat.append(s+",");
			}
			moviecat = cat.toString();
		} catch(Exception ex) {
			System.out.println("注册表单出错...");
			ex.printStackTrace();
		}
		
		Users u = new Users();
		u.setId(id);
		u.setPassword(password);
		u.setGender(gender);
		u.setAge(age);
		u.setMoviecat(moviecat);
		
		UserDAO udao = new UserDAO();
		
		if(udao.userReg(u)) {
			request.getRequestDispatcher("../reg_success.jsp").forward(request, response);
		}
		else {
			response.sendRedirect("../reg_failure.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
