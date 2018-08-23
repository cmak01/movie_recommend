/**
 * @Title: Comments.java
 * @Package per.entity
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:51:01
 * @version V1.0
 */
package per.entity;

import java.util.Date;

/**
 * @ClassName: Comments
 * @Description: 用户评论类
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:51:01
 *
 */
public class Comments {
	
	private int idnum;	//评论ID编号
	private String userid;	//用户ID
	private String moviename;	//电影名
	private String moviecomment;	//电影评论
	private double score;	//评分
	private Date commentime;	//评论时间
	
	public Comments() {}

	public int getIdnum() {
		return idnum;
	}

	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}

	public String getMoviecomment() {
		return moviecomment;
	}

	public void setMoviecomment(String moviecomment) {
		this.moviecomment = moviecomment;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public Date getCommentime() {
		return commentime;
	}

	public void setCommentime(Date commentime) {
		this.commentime = commentime;
	}

	@Override
	public String toString() {
		return "用户ID：" + userid
				+ "\n电影名：" + moviename + "\n电影评论：" + moviecomment
				+ "\n电影评分" + score + "\n评论时期：" + commentime + "\n";
	}
	
}
