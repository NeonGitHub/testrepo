package cn.graProject.entity;

public class User {

	private String user_id;
	
	private String user_pwd;
	
	private String user_dev;
	
	private String user_email;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_dev() {
		return user_dev;
	}

	public void setUser_dev(String user_dev) {
		this.user_dev = user_dev;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_dev=" + user_dev + ", user_email="
				+ user_email + "]";
	}

	
}
