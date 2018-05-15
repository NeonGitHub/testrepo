package cn.graProject.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.DataDao;
import cn.graProject.entity.Device;

@Service
public class DataService {
	
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DataDao dataDao;
	
	public void upLoadData(String deviceId,double temp,double tds,double ph) {
		Device device=new Device();
		device.setDeviceId(deviceId);
		device.setTempData(temp);
		device.setTdsData(tds);
		device.setPhData(ph);
		dataDao.uploadDataByDevice(device);
	}
	
	public Device findNewData(String deviceId) {
		return dataDao.queryNewDataById(deviceId);
	}
	
	public Map<String,Object> findAllData(String deviceId) {
		List<Device> list=dataDao.queryAllDataById(deviceId);
		List<Double> ph=new ArrayList<Double>();
		List<Double> tds=new ArrayList<Double>();
		List<Double> temp=new ArrayList<Double>();
		List<String> date=new ArrayList<String>();
		for(Device device:list) {
			ph.add(device.getPhData());
			tds.add(device.getTdsData());
			temp.add(device.getTempData());
			date.add(device.getUploadTime().toString());
		}
		
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("ph", ph);
		map.put("tds", tds);
		map.put("temp", temp);
		map.put("date", date);
		return map;
	}

	public List<Device> findDataByPage(String userDev, int page, int pageSize) {
		int page1=(page-1)*pageSize;
		return dataDao.findDataByPage(userDev,page1,pageSize);
	}

}
