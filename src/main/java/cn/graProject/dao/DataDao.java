package cn.graProject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.graProject.entity.Device;
import cn.graProject.entity.DeviceWarn;

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
	 * 查询历史全部数据，根据设备ID查询，返回设备数据列表
	 * @param deviceId
	 * @return
	 */
	List<Device> queryAllDataById(String deviceId);

	/**
	 * 根据页码/设备ID查询历史全部数据，返回设备数据列表
	 * @param userDev
	 * @param page1
	 * @param pageSize
	 * @return
	 */
	List<Device> findDataByPage(@Param("deviceId") String deivceId,@Param("offset") int offset,@Param("limit") int limit);

	void addWarningSettings(DeviceWarn dw);

	DeviceWarn findDeviceWarn(String userDev);

}
