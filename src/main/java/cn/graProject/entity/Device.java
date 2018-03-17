package cn.graProject.entity;

import java.util.Date;

public class Device {

	//设备ID
	private String deviceId;
	//ph数据
	private double phData;
	//tds数据
	private double tdsData;
	//温度数据
	private double tempData;
	//上传时间
	private Date uploadTime;

	
	
	@Override
	public String toString() {
		return "Device [deviceId=" + deviceId + ", phData=" + phData + ", tdsData=" + tdsData + ", tempData=" + tempData
				+ ", uploadTime=" + uploadTime + "]";
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public double getPhData() {
		return phData;
	}

	public void setPhData(double phData) {
		this.phData = phData;
	}

	public double getTdsData() {
		return tdsData;
	}

	public void setTdsData(double tdsData) {
		this.tdsData = tdsData;
	}

	public double getTempData() {
		return tempData;
	}

	public void setTempData(double tempData) {
		this.tempData = tempData;
	}

	public Date getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	
	
	
}
