package cn.graProject.dto;

public class DiseaseDto {
	
	private int diseaseId;
	private String diseaseName;
	private String characterA;
	private String characterB;
	private String characterC;
	private String characterD;
	private String characterE;
	private String characterF;
	private String characterG;
	private String characterH;
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
	public String getCharacterA() {
		return characterA;
	}
	public void setCharacterA(String characterA) {
		this.characterA = characterA;
	}
	public String getCharacterB() {
		return characterB;
	}
	public void setCharacterB(String characterB) {
		this.characterB = characterB;
	}
	public String getCharacterC() {
		return characterC;
	}
	public void setCharacterC(String characterC) {
		this.characterC = characterC;
	}
	public String getCharacterD() {
		return characterD;
	}
	public void setCharacterD(String characterD) {
		this.characterD = characterD;
	}
	public String getCharacterE() {
		return characterE;
	}
	public void setCharacterE(String characterE) {
		this.characterE = characterE;
	}
	public String getCharacterF() {
		return characterF;
	}
	public void setCharacterF(String characterF) {
		this.characterF = characterF;
	}
	public String getCharacterG() {
		return characterG;
	}
	public void setCharacterG(String characterG) {
		this.characterG = characterG;
	}
	public String getCharacterH() {
		return characterH;
	}
	public void setCharacterH(String characterH) {
		this.characterH = characterH;
	}
	public String getDiseaseReason() {
		return diseaseReason;
	}
	public void setDiseaseReason(String diseaseReason) {
		this.diseaseReason = diseaseReason;
	}
	@Override
	public String toString() {
		return "DiseaseDto [diseaseId=" + diseaseId + ", diseaseName=" + diseaseName + ", characterA=" + characterA
				+ ", characterB=" + characterB + ", characterC=" + characterC + ", characterD=" + characterD
				+ ", characterE=" + characterE + ", characterF=" + characterF + ", characterG=" + characterG
				+ ", characterH=" + characterH + ", diseaseReason=" + diseaseReason + "]";
	}
	
	

}
