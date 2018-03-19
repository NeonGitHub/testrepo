package cn.graProject.dao;

import cn.graProject.entity.Device;
import cn.graProject.entity.User;

public interface LoginDao {

	
	/**
	 * 登陆，根据用户ID查询，返回用户信息。
	 * @param userId
	 * @return User
	 */
	User queryUserByEmail(String userEmail) ;
	/**
	 * 查询实时数据，根据设备ID查询，返回设备信息。
	 * @param deviceId
	 * @return Device
	 */
	Device queryDataById(String deviceId) ;
	
}
