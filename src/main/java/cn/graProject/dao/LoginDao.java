package cn.graProject.dao;

import cn.graProject.entity.User;

public interface LoginDao {

	
	/**
	 * 登陆，根据用户ID查询，返回用户信息。
	 * @param userId
	 * @return User
	 */
	User queryUserByEmail(String userEmail) ;

	void userRegister(User user);
	
}
