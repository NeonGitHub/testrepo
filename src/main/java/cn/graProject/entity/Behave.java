package cn.graProject.entity;

public class Behave {

	private String behaveId;
	private String behaveDesc;
	private String behavePart;
	private int behaveValue;
	public String getBehaveId() {
		return behaveId;
	}
	public void setBehaveId(String behaveId) {
		this.behaveId = behaveId;
	}
	public String getBehaveDesc() {
		return behaveDesc;
	}
	public void setBehaveDesc(String behaveDesc) {
		this.behaveDesc = behaveDesc;
	}
	public String getBehavePart() {
		return behavePart;
	}
	public void setBehavePart(String behavePart) {
		this.behavePart = behavePart;
	}
	public int getBehaveValue() {
		return behaveValue;
	}
	public void setBehaveValue(int behaveValue) {
		this.behaveValue = behaveValue;
	}
	@Override
	public String toString() {
		return "Behave [behaveId=" + behaveId + ", behaveDesc=" + behaveDesc + ", behavePart=" + behavePart
				+ ", behaveValue=" + behaveValue + "]";
	}
	
	
}
