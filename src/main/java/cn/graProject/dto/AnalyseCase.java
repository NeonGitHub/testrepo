package cn.graProject.dto;

public class AnalyseCase {
	
	
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
	private double phData;
	private double tdsData;
	private double tempData;
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
	@Override
	public String toString() {
		return "AnalyseCase [diseaseId=" + diseaseId + ", diseaseName=" + diseaseName + ", characterA=" + characterA
				+ ", characterB=" + characterB + ", characterC=" + characterC + ", characterD=" + characterD
				+ ", characterE=" + characterE + ", characterF=" + characterF + ", characterG=" + characterG
				+ ", characterH=" + characterH + ", phData=" + phData + ", tdsData=" + tdsData + ", tempData="
				+ tempData + "]";
	}
	
	
	

}
