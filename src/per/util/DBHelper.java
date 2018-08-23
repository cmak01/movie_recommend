/**
 * @Title: DBHelper.java
 * @Package per.util
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 上午11:29:33
 * @version V1.0
 */
package per.util;

import java.io.*;
import java.lang.reflect.Field;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * @ClassName: DBHelper
 * @Description: 数据库的增删改查
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 上午11:29:33
 *
 */
public class DBHelper {

	private final static String DRIVER;//加载驱动
	private final static String URL;//连接数据库
	private final static String USERNAME;//登入数据库名
	private final static String PASSWORD;//登入数据库密码
	
	//从配置文件中读取连接数据库属性
	static {
		Properties pr = new Properties();
		try {
			String filename = "db.properties";
			pr.load(DBHelper.class.getClassLoader().getResourceAsStream(filename));
		} catch(Exception ex) {
			System.out.println("读取配置文件出错");
			ex.printStackTrace();
		}
		DRIVER = pr.getProperty("driver");
		URL = pr.getProperty("url");
		USERNAME = pr.getProperty("username");
		PASSWORD = pr.getProperty("password");
	}
	
	/**
	 * @Title: getConn
	 * @Description: 获得数据库的连接
	 * @param @return
	 * @return Connection
	 * @throws
	 */
	public static Connection getConn() {
		Connection conn = null;
		try {
			Class.forName(DRIVER);
		} catch(ClassNotFoundException e) {
			System.out.println("驱动加载出现异常");
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch(SQLException e) {
			System.out.println("数据库连接出现异常");
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * @Title: closeAll
	 * @Description: 关闭数据库连接
	 * @param @param conn
	 * @param @param pstmt
	 * @param @param rs
	 * @return void
	 * @throws
	 */
	public static void closeAll(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch(SQLException e) {
				System.out.println("结果集关闭出现异常");
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				System.out.println("pstmt关闭出现异常");
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				System.out.println("conn关闭出现异常");
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * @Title: exeADUSQL
	 * @Description: 实现数据库的增删改操作
	 * @param @param sql
	 * @param @param params
	 * @param @return
	 * @return int(0表示操作失败，>0操作影响行数)
	 * @throws
	 */
	public int exeADUSQL(String sql, List<Object> params) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBHelper.getConn();
			pstmt = conn.prepareStatement(sql);
			if(params != null) {	//判断有没有参数
				for(int i=0; i<params.size(); i++)
					pstmt.setObject(i+1, params.get(i));
			}
			result = pstmt.executeUpdate();//执行SQL语句
		} catch(SQLException e) {
			System.out.println("数据库操作出现异常");
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		return result;
	}
	
	/**
	 * @Title: exeQuerySQL
	 * @Description: 执行数据库表的查找操作
	 * @param @param sql
	 * @param @param params
	 * @param @param cls
	 * @param @return
	 * @param @throws Exception
	 * @return List<T>
	 * @throws
	 */
	public <T> List<T> exeQuerySQL(String sql, List<Object> params, Class<T> cls) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<T> data = new ArrayList<T>();
		try {
			conn = DBHelper.getConn();
			pstmt = conn.prepareStatement(sql);
			if(params != null) {
				for(int i=0; i<params.size(); i++)
					pstmt.setObject(i+1, params.get(i));
			}
			rs = pstmt.executeQuery();	//执行查找操作做，将结果集保存在rs中
			ResultSetMetaData rsd = rs.getMetaData();
			while(rs.next()) {
				T m = cls.newInstance();
				for(int i=0; i<rsd.getColumnCount(); i++) {
					String colName = rsd.getColumnName(i+1);	//获取列名
					Object value = rs.getObject(colName);	//获取列对应的值
					Field field = cls.getDeclaredField(colName);
					field.setAccessible(true);
					field.set(m, value);
				}
				data.add(m);
			}
		} catch(SQLException e) {
			System.out.println("查询数据库表单出错!!!");
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		return data;
	}
}
