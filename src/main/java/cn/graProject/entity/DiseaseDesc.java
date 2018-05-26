package cn.graProject.entity;

public class DiseaseDesc {

	
	private int diseaseId;
	private String diseaseName;
	private int characterA;
	private int characterB;
	private int characterC;
	private int characterD;
	private int characterE;
	private int characterF;
	private int characterG;
	private int characterH;
	
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
	
	public int getCharacterA() {
		return characterA;
	}
	public void setCharacterA(int characterA) {
		this.characterA = characterA;
	}
	public int getCharacterB() {
		return characterB;
	}
	public void setCharacterB(int characterB) {
		this.characterB = characterB;
	}
	public int getCharacterC() {
		return characterC;
	}
	public void setCharacterC(int characterC) {
		this.characterC = characterC;
	}
	public int getCharacterD() {
		return characterD;
	}
	public void setCharacterD(int characterD) {
		this.characterD = characterD;
	}
	public int getCharacterE() {
		return characterE;
	}
	public void setCharacterE(int characterE) {
		this.characterE = characterE;
	}
	public int getCharacterF() {
		return characterF;
	}
	public void setCharacterF(int characterF) {
		this.characterF = characterF;
	}
	public int getCharacterG() {
		return characterG;
	}
	public void setCharacterG(int characterG) {
		this.characterG = characterG;
	}
	public int getCharacterH() {
		return characterH;
	}
	public void setCharacterH(int characterH) {
		this.characterH = characterH;
	}
	@Override
	public String toString() {
		return "DiseaseCase [diseaseId=" + diseaseId + ", diseaseName=" + diseaseName + ", characterA=" + characterA
				+ ", characterB=" + characterB + ", characterC=" + characterC + ", characterD=" + characterD
				+ ", characterE=" + characterE + ", characterF=" + characterF + ", characterG=" + characterG
				+ ", characterH=" + characterH + "]";
	}
	
	
}
