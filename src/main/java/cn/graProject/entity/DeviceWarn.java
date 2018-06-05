package cn.graProject.entity;

public class DeviceWarn {
	
	private String deviceId;
	private double phMax;
	private double phMin;
	private double tdsMax;
	private double tdsMin;
	private double tempMax;
	private double tempMin;
	
	public String getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	public double getPhMax() {
		return phMax;
	}
	public void setPhMax(double phMax) {
		this.phMax = phMax;
	}
	public double getPhMin() {
		return phMin;
	}
	public void setPhMin(double phMin) {
		this.phMin = phMin;
	}
	public double getTdsMax() {
		return tdsMax;
	}
	public void setTdsMax(double tdsMax) {
		this.tdsMax = tdsMax;
	}
	public double getTdsMin() {
		return tdsMin;
	}
	public void setTdsMin(double tdsMin) {
		this.tdsMin = tdsMin;
	}
	public double getTempMax() {
		return tempMax;
	}
	public void setTempMax(double tempMax) {
		this.tempMax = tempMax;
	}
	public double getTempMin() {
		return tempMin;
	}
	public void setTempMin(double tempMin) {
		this.tempMin = tempMin;
	}
	
}
