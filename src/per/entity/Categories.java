/**
 * @Title: Categories.java
 * @Package per.entity
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:42:07
 * @version V1.0
 */
package per.entity;

/**
 * @ClassName: Categories
 * @Description: 电影类别类
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:42:07
 *
 */
public class Categories {

	private String movie_cat;	//电影类别
	
	public Categories() {}

	public String getMovie_cat() {
		return movie_cat;
	}

	public void setMovie_cat(String movie_cat) {
		this.movie_cat = movie_cat;
	}

	@Override
	public String toString() {
		return "电影类别：" + movie_cat + "\n";
	}
	
}
