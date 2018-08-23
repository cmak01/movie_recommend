/**
 * @Title: MoviesDAO.java
 * @Package per.dao
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-4 下午4:18:28
 * @version V1.0
 */
package per.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import per.entity.Movies;
import per.util.DBHelper;
/**
 * @ClassName: MoviesDAO
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-4 下午4:18:28
 *
 */
public class MoviesDAO {

	/**
	 * @Title: getAllMovies
	 * @Description: 获得电影列表的所有信息
	 * @param @return
	 * @return List<Movies>
	 * @throws
	 */
	public List<Movies> getAllMovies() {
		String sql = "select * from movies";
		DBHelper db = new DBHelper();
		Connection conn = DBHelper.getConn();
		if(conn == null)
			System.exit(1);	//非正常退出程序
		List<Object> param = new ArrayList<Object>();
		List<Movies> data = new ArrayList<Movies>();
		try {
			data = db.exeQuerySQL(sql, param, Movies.class);
		} catch(Exception e) {
			System.out.println("查询出错");
			e.printStackTrace();
		}
		return data;
	}
}
