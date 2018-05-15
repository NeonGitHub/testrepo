package cn.graProject.entity;

public class TreatmentCheck {
	
//	auto_increment
	private int caseId;
	private String caseAuthor;
	private String fishName;
	private double phData;
	private double tdsData;
	private double tempData;
	private int diseaseId;
	private String diseaseName;
	private String treatment;
	public int getCaseId() {
		return caseId;
	}
	public void setCaseId(int caseId) {
		this.caseId = caseId;
	}
	public String getCaseAuthor() {
		return caseAuthor;
	}
	public void setCaseAuthor(String caseAuthor) {
		this.caseAuthor = caseAuthor;
	}
	public String getFishName() {
		return fishName;
	}
	public void setFishName(String fishName) {
		this.fishName = fishName;
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
	public int getDiseaseId() {
		return diseaseId;
	}
	public void setDiseaseId(int diseaseId) {
		this.diseaseId = diseaseId;
	}
	public String getDiseaseName() {
		return diseaseName;
	}
	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}
	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	@Override
	public String toString() {
		return "TreatmentCheck [caseId=" + caseId + ", caseAuthor=" + caseAuthor + ", fishName=" + fishName
				+ ", phData=" + phData + ", tdsData=" + tdsData + ", tempData=" + tempData + ", diseaseId=" + diseaseId
				+ ", diseaseName=" + diseaseName + ", treatment=" + treatment + "]";
	}
	
	
	

}
