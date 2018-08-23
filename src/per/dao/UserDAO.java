/**
 * @Title: UserDAO.java
 * @Package per.dao
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-2 上午8:12:48
 * @version V1.0
 */
package per.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import per.util.DBHelper;
import per.entity.Users;

/**
 * @ClassName: UserDAO
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-2 上午8:12:48
 *
 */
public class UserDAO {
	
	/**
	 * @Title: userLogin
	 * @Description: 判断数据库中是否有此用户
	 * @param @param user
	 * @param @return
	 * @return boolean，true代表有，false代表没有
	 * @throws
	 */
	public boolean userLogin(Users user) {
		String sql = "SELECT * FROM users WHERE id=?";
		DBHelper db = new DBHelper();
		Connection conn = DBHelper.getConn();
		if(conn == null)
			System.exit(1);	//非正常退出程序
		List<Object> param = new ArrayList<Object>();
		param.add(user.getId());
		List<Users> data = new ArrayList<Users>();
		try {
			data = db.exeQuerySQL(sql, param, Users.class);
		} catch(Exception e) {
			System.out.println("查询出错");
			e.printStackTrace();
		}
		if(data.size()>0 && data.get(0).getPassword().equals(user.getPassword())) {
			//密码也要判断
			System.out.println("数据库中存在ID为(" + user.getId() + ")的用户！");
			return true;
		}
		else {
			System.out.println("数据库中查无此人！");
			return false;
		}
	}
	
	/**
	 * @Title: userReg
	 * @Description: 判断注册用户是否成功
	 * @param @param user
	 * @param @return
	 * @return boolean，true代表添加成功，false代表添加失败
	 * @throws
	 */
	public boolean userReg(Users user) {
		String sql = "INSERT INTO users VALUES(?,?,?,?,?)";
		DBHelper db = new DBHelper();
		Connection conn = DBHelper.getConn();
		if(conn == null)
			System.exit(1);	//非正常退出程序
		List<Object> param = new ArrayList<Object>();
		param.add(user.getId());
		param.add(user.getPassword());
		param.add(user.getGender());
		param.add(user.getAge());
		param.add(user.getMoviecat());
		if(db.exeADUSQL(sql, param) > 0) {
			System.out.println("用户("+user.getId()+")注册成功");
			return true;
		}
		else {
			System.out.println("注册失败");
			return false;
		}
	}
	
	/**
	 * @Title: userMod
	 * @Description: 根据用户ID和新密码来更新此用户密码
	 * @param @param password
	 * @param @param id
	 * @param @return
	 * @return boolean，true代表更新成功，false代表更新失败
	 * @throws
	 */
	public boolean userMod(String password, String id) {
		String sql = "UPDATE users SET password=? WHERE id=?";
		DBHelper db = new DBHelper();
		Connection conn = DBHelper.getConn();
		if(conn == null)
			System.exit(1);	//非正常退出程序
		List<Object> param = new ArrayList<Object>();
		param.add(password);
		param.add(id);
		if(db.exeADUSQL(sql, param) > 0) {
			System.out.println("用户("+id+")更新密码成功");
			return true;
		}
		else {
			System.out.println("用户("+id+")更新密码失败！");
			return false;
		}
	}
}
