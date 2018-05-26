package cn.graProject.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.LoginDao;
import cn.graProject.entity.User;

@Service
public class LoginService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LoginDao loginDao;

	public int loginCompare(String userEmail, String userPwd) {
		if (userEmail == null || userPwd == null) {
			return -1;
		}
		User user = loginDao.queryUserByEmail(userEmail);

		if (userPwd.equals(user.getUserPwd()) && user.getUserPermission() == 0) {
			return 0;
		}
		if (userPwd.equals(user.getUserPwd()) && user.getUserPermission() == 1) {
			return 1;
		}
		return -1;
	}

	public User findUser(String userEmail) {
		return loginDao.queryUserByEmail(userEmail);
	}

	public void userRegister(User user) {
		loginDao.userRegister(user);
		
	}

}
