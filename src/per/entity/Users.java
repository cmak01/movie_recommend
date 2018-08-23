/**
 * @Title: Users.java
 * @Package per.entity
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:14:07
 * @version V1.0
 */
package per.entity;

/**
 * @ClassName: Users
 * @Description: 用户信息类
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:14:07
 *
 */
public class Users {

	private String id;	//用户ID
	private String password;	//用户密码
	private String gender;	//用户性别
	private int age;	//用户年龄
	private String moviecat;	//喜爱电影类型
	
	public Users() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getMoviecat() {
		return moviecat;
	}

	public void setMoviecat(String moviecat) {
		this.moviecat = moviecat;
	}

	@Override
	public String toString() {
		return "用户ID："+id+"\n用户密码："+password+"\n性别："+gender
				+"\n用户年龄："+age+"\n喜爱电影类型："+moviecat+"\n";
	}
	
}
