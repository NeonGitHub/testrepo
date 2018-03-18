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
	
	
	public boolean loginCompare(String userId,String userPwd) {
		if(userId==null||userPwd==null) {
			return false;
		}
		User user=loginDao.queryUserById(userId);
		if(userPwd != user.getUserPwd()) {
			return false;
		}else {
			return true;
		}
		
	}
	
	public User findUser(String userId) {
		return loginDao.queryUserById(userId);
	}
	
	
}
