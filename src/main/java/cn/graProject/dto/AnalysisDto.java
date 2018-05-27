package cn.graProject.dto;

import cn.graProject.entity.TreatmentCase;

/**
 * 案例分析排序过后的 带有相似度的 案例类
 * @author zhangjingxuan
 *
 */
public class AnalysisDto {

	private double distance1;
	private int distance2;
	private double distance3;
	private TreatmentCase treatment;
	
	
	public double getDistance1() {
		return distance1;
	}
	public void setDistance1(double distance1) {
		this.distance1 = distance1;
	}
	public int getDistance2() {
		return distance2;
	}
	public void setDistance2(int distance2) {
		this.distance2 = distance2;
	}
	public double getDistance3() {
		return distance3;
	}
	public void setDistance3(double distance3) {
		this.distance3 = distance3;
	}
	
	public TreatmentCase getTreatment() {
		return treatment;
	}
	public void setTreatment(TreatmentCase treatment) {
		this.treatment = treatment;
	}
	
	
	
}
