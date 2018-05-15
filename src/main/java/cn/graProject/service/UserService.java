package cn.graProject.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.UserDao;
import cn.graProject.entity.User;

@Service
public class UserService {

private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserDao userDao; 
	
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
