package cn.graProject.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.LoginDao;
import cn.graProject.entity.Device;
import cn.graProject.entity.User;

@Service
public class LoginService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private LoginDao loginDao;
	
	
	public boolean loginCompare(String userEmail,String userPwd) {
		if(userEmail==null||userPwd==null) {
			return false;
		}
		User user=loginDao.queryUserByEmail(userEmail);

		if(userPwd.equals(user.getUserPwd()) ) {
			return true;
		}else {
			return false;
		}
		
	}
	
	public User findUser(String userEmail) {
		return loginDao.queryUserByEmail(userEmail);
	}
	
	
}
