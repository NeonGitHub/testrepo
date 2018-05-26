package cn.graProject.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.graProject.dao.AdminDao;
import cn.graProject.dao.CaseDao;
import cn.graProject.dto.DiseaseDto;
import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.DiseaseDesc;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;
import cn.graProject.entity.User;

@Service
public class AdminService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AdminDao adminDao;

	public List<User> findAllUser(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return adminDao.findAllUser(page1, pageSize);
	}

	public List<DiseaseCase> findAllDisease(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return adminDao.findAllDisease(page1, pageSize);
	}

	public List<Fish> findAllFish(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return adminDao.findAllFish(page1, pageSize);

	}

	public List<Behave> findAllBehave(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return adminDao.findAllBehave(page1, pageSize);
	}

	public List<TreatmentCase> findAllCheckCase(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return adminDao.findAllCheckCase(page1, pageSize);
	}

	@Transactional
	public void addDiseaseCase(DiseaseCase disease, DiseaseDto descDto) {
		StringBuffer show = new StringBuffer();
		StringBuffer show1 = new StringBuffer();
		DiseaseDesc diseaseDesc=new DiseaseDesc();
		diseaseDesc.setDiseaseName(descDto.getDiseaseName());
		try {
			// A01+xxxx
			if (!descDto.getCharacterA().isEmpty()) {
				show.append(descDto.getCharacterA());
				diseaseDesc.setCharacterA(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// B01+xxxx
			if (!descDto.getCharacterB().isEmpty()) {
				show.append(descDto.getCharacterB());
				diseaseDesc.setCharacterB(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// C01+xxx
			if (!descDto.getCharacterC().isEmpty()) {
				show.append(descDto.getCharacterC());
				diseaseDesc.setCharacterC(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// D01+xxx
			if (!descDto.getCharacterD().isEmpty()) {
				show.append(descDto.getCharacterD());
				diseaseDesc.setCharacterD(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// E01+xxx
			if (!descDto.getCharacterE().isEmpty()) {
				show.append(descDto.getCharacterE());
				diseaseDesc.setCharacterE(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// F01+xxx
			if (!descDto.getCharacterF().isEmpty()) {
				show.append(descDto.getCharacterF());
				diseaseDesc.setCharacterF(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// G01+xxx
			if (!descDto.getCharacterG().isEmpty()) {
				show.append(descDto.getCharacterG());
				diseaseDesc.setCharacterG(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// H01+xxx
			if (!descDto.getCharacterH().isEmpty()) {
				show.append(descDto.getCharacterH());
				diseaseDesc.setCharacterH(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
			}
			String show2 = show1.toString();
			disease.setDiseaseShow(show2);

			adminDao.addDiseaseCase(disease);
			adminDao.addDiseaseDesc(diseaseDesc);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Transactional
	public void deleteDiseaseById(int diseaseId) {
		adminDao.deleteDiseaseCaseById(diseaseId);
		adminDao.deleteDiseaseDescById(diseaseId);
	}

	public DiseaseDesc findOneDiseaseDescById(int diseaseId) {
		return adminDao.findOneDiseaseDescById(diseaseId);
	}

	public DiseaseCase findOneDiseaseCaseById(int diseaseId) {
		return adminDao.findOneDiseaseCaseById(diseaseId);
	}

	@Transactional
	public void updateDiseaseCaseById(DiseaseCase disease, DiseaseDto descDto) {
		StringBuffer show = new StringBuffer();
		StringBuffer show1 = new StringBuffer();
		
		DiseaseDesc diseaseDesc=new DiseaseDesc();
		diseaseDesc.setDiseaseName(descDto.getDiseaseName());
		diseaseDesc.setDiseaseId(descDto.getDiseaseId());
		try {
			// A01+xxxx
			if (!descDto.getCharacterA().isEmpty()) {
				show.append(descDto.getCharacterA());
				diseaseDesc.setCharacterA(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// B01+xxxx
			if (!descDto.getCharacterB().isEmpty()) {
				show.append(descDto.getCharacterB());
				diseaseDesc.setCharacterB(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// C01+xxx
			if (!descDto.getCharacterC().isEmpty()) {
				show.append(descDto.getCharacterC());
				diseaseDesc.setCharacterC(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// D01+xxx
			if (!descDto.getCharacterD().isEmpty()) {
				show.append(descDto.getCharacterD());
				diseaseDesc.setCharacterD(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// E01+xxx
			if (!descDto.getCharacterE().isEmpty()) {
				show.append(descDto.getCharacterE());
				diseaseDesc.setCharacterE(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// F01+xxx
			if (!descDto.getCharacterF().isEmpty()) {
				show.append(descDto.getCharacterF());
				diseaseDesc.setCharacterF(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// G01+xxx
			if (!descDto.getCharacterG().isEmpty()) {
				show.append(descDto.getCharacterG());
				diseaseDesc.setCharacterG(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// H01+xxx
			if (!descDto.getCharacterH().isEmpty()) {
				show.append(descDto.getCharacterH());
				diseaseDesc.setCharacterH(Integer.parseInt(show.substring(0, 3)));
				show1.append(show.substring(4));
				show1.append(" ");
			}
			String show2 = show1.toString();
			disease.setDiseaseShow(show2);

			adminDao.updateDiseaseCaseById(disease);
			adminDao.updateDiseaseDescById(diseaseDesc);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void addFish(Fish fish) {

		adminDao.addFish(fish.getFishName());
	}

	public void deleteFishById(int fishId) {
		adminDao.deleteFish(fishId);
	}

	public void addTreatmentCase(TreatmentCase treatment) {
		adminDao.addTreatmentCase(treatment);
	}

	public void deleteCaseById(int caseId) {
		adminDao.deleteCaseById(caseId);
	}

	public TreatmentCase findOneCaseById(int caseId) {
		return adminDao.findOneCaseById(caseId);
	}

	public void updateCaseById(TreatmentCase treatment) {
		adminDao.updateCaseById(treatment);
	}

	public void deleteCheckCaseById(int caseId) {
		adminDao.deleteCheckCaseById(caseId);
	}

	@Transactional
	public void passOneCheckCaseById(int caseId) {
		TreatmentCase treatment = adminDao.findOneCheckCaseById(caseId);
		adminDao.deleteCheckCaseById(caseId);
		adminDao.addTreatmentCase(treatment);
	}

	public TreatmentCase findOneCheckCaseById(int caseId) {
		return adminDao.findOneCheckCaseById(caseId);
	}

	@Transactional
	public void passOneCheckCaseByTreatment(TreatmentCase treatment) {
		adminDao.deleteCheckCaseById(treatment.getCaseId());
		adminDao.addTreatmentCase(treatment);

	}

	public void addBehave(Behave behave) {
		adminDao.addBehave(behave);
	}
	public void updateBehaveById(Behave behave) {
		adminDao.updateBehaveById(behave);
	}

	public Behave findOneBehaveById(String id) {
		return adminDao.findOneBehaveById(id);
	}

	public void deleteBehaveById(String behaveId) {
		adminDao.deleteBehaveById(behaveId);
	}

}
