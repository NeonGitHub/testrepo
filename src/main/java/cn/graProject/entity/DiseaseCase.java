package cn.graProject.entity;

public class DiseaseCase {
	
	private int diseaseId;
	private String diseaseName;
	private String diseaseShow;
	private String diseaseReason;
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
	public String getDiseaseShow() {
		return diseaseShow;
	}
	public void setDiseaseShow(String diseaseShow) {
		this.diseaseShow = diseaseShow;
	}
	public String getDiseaseReason() {
		return diseaseReason;
	}
	public void setDiseaseReason(String diseaseReason) {
		this.diseaseReason = diseaseReason;
	}
	@Override
	public String toString() {
		return "DiseaseCase [diseaseId=" + diseaseId + ", diseaseName=" + diseaseName + ", diseaseShow=" + diseaseShow
				+ ", diseaseReason=" + diseaseReason + "]";
	}
	
	
	

}
