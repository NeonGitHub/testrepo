package cn.graProject.dao;

import java.util.List;

import cn.graProject.entity.Device;

public interface DataDao {
	
	/**
	 * 插入数据
	 * @param device
	 */
	void uploadDataByDevice(Device device);

	/**
	 * 查询实时数据，根据设备ID查询，返回设备信息。
	 * @param deviceId
	 * @return Device
	 */
	Device queryNewDataById(String deviceId) ;
	
	/**
	 * 查询历史全部数据，根据设备ID查询，返回设备列表
	 * @param deviceId
	 * @return
	 */
	List<Device> queryAllDataById(String deviceId);

}
