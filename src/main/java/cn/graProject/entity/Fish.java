package cn.graProject.entity;

public class Fish {
	
	//鱼种编号
	private int fishId;
	//鱼种名称
	private String fishName;
	
	public int getFishId() {
		return fishId;
	}
	public void setFishId(int fishId) {
		this.fishId = fishId;
	}
	public String getFishName() {
		return fishName;
	}
	public void setFishName(String fishName) {
		this.fishName = fishName;
	}
	@Override
	public String toString() {
		return "Fish [fishId=" + fishId + ", fishName=" + fishName + "]";
	}
	

}
