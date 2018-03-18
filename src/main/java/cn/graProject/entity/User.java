package cn.graProject.entity;

public class User {

	private String userId;
	
	private String userPwd;
	
	private String userDev;
	
	private String userEmail;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserDev() {
		return userDev;
	}

	public void setUserDev(String userDev) {
		this.userDev = userDev;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPwd=" + userPwd + ", userDev=" + userDev + ", userEmail=" + userEmail
				+ "]";
	}
	
	
}
