/**
 * @Title: Movies.java
 * @Package per.entity
 * @Description: TODO
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:24:26
 * @version V1.0
 */
package per.entity;

import java.util.Date;

/**
 * @ClassName: Movies
 * @Description: 电影列表类
 * @author cmak ahutczw1995@163.com
 * @date 2018-5-1 下午1:24:26
 *
 */
public class Movies {

	private int id;		//电影编号
	private String moviename;	//电影名
	private Date releasetime;	//电影发布时间
	private String image;	//电影海报
	private String director;	//导演
	private String actor;	//演员
	private String introduction;	//电影简介
	private String moviecat;	//电影类别
	private int commentnum;	//评分人数
	private double totalscore;	//电影评分
	
	public Movies() {}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}

	public Date getReleasetime() {
		return releasetime;
	}

	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getMoviecat() {
		return moviecat;
	}

	public void setMoviecat(String moviecat) {
		this.moviecat = moviecat;
	}
	
	public int getCommentnum() {
		return commentnum;
	}

	public void setCommentnum(int commentnum) {
		this.commentnum = commentnum;
	}

	public double getTotalscore() {
		return totalscore;
	}

	public void setTotalscore(double totalscore) {
		this.totalscore = totalscore;
	}

	@Override
	public String toString() {
		return "电影ID：" + id + "\n电影名：" + moviename + "\n电影发布时间："
				+ releasetime + "\n电影海报：" + image + "\n导演：" + director
				+ "\n演员：" + actor + "\n电影简介：" + introduction
				+ "\n电影类别：" + moviecat + "\n评分人数：" + commentnum + "\n电影评分：" + totalscore + "\n";
	}
	
}
