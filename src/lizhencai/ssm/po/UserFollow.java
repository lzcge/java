package lizhencai.ssm.po;

public class UserFollow {
	private Integer id;
	private Integer user_id;
	private String follow_username;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getFollow_username() {
		return follow_username;
	}
	public void setFollow_username(String follow_username) {
		this.follow_username = follow_username;
	}

}
