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
	public void addDiseaseCase(DiseaseCase disease, DiseaseDesc desc) {
		StringBuffer show = new StringBuffer();
		StringBuffer show1 = new StringBuffer();
		try {
			// A01+xxxx
			if (!desc.getCharacterA().isEmpty()) {
				show.append(desc.getCharacterA());
				desc.setCharacterA(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// B01+xxxx
			if (!desc.getCharacterB().isEmpty()) {
				show.append(desc.getCharacterB());
				desc.setCharacterB(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// C01+xxx
			if (!desc.getCharacterC().isEmpty()) {
				show.append(desc.getCharacterC());
				desc.setCharacterC(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// D01+xxx
			if (!desc.getCharacterD().isEmpty()) {
				show.append(desc.getCharacterD());
				desc.setCharacterD(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// E01+xxx
			if (!desc.getCharacterE().isEmpty()) {
				show.append(desc.getCharacterE());
				desc.setCharacterE(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// F01+xxx
			if (!desc.getCharacterF().isEmpty()) {
				show.append(desc.getCharacterF());
				desc.setCharacterF(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// G01+xxx
			if (!desc.getCharacterG().isEmpty()) {
				show.append(desc.getCharacterG());
				desc.setCharacterG(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// H01+xxx
			if (!desc.getCharacterH().isEmpty()) {
				show.append(desc.getCharacterH());
				desc.setCharacterH(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
			}
			String show2 = show1.toString();
			disease.setDiseaseShow(show2);

			adminDao.addDiseaseCase(disease);
			adminDao.addDiseaseDesc(desc);
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
	public void updateDiseaseCaseById(DiseaseCase disease, DiseaseDesc desc) {
		StringBuffer show = new StringBuffer();
		StringBuffer show1 = new StringBuffer();
		try {
			// A01+xxxx
			if (!desc.getCharacterA().isEmpty()) {
				show.append(desc.getCharacterA());
				desc.setCharacterA(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// B01+xxxx
			if (!desc.getCharacterB().isEmpty()) {
				show.append(desc.getCharacterB());
				desc.setCharacterB(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// C01+xxx
			if (!desc.getCharacterC().isEmpty()) {
				show.append(desc.getCharacterC());
				desc.setCharacterC(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// D01+xxx
			if (!desc.getCharacterD().isEmpty()) {
				show.append(desc.getCharacterD());
				desc.setCharacterD(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// E01+xxx
			if (!desc.getCharacterE().isEmpty()) {
				show.append(desc.getCharacterE());
				desc.setCharacterE(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// F01+xxx
			if (!desc.getCharacterF().isEmpty()) {
				show.append(desc.getCharacterF());
				desc.setCharacterF(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// G01+xxx
			if (!desc.getCharacterG().isEmpty()) {
				show.append(desc.getCharacterG());
				desc.setCharacterG(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
				show.setLength(0);
			}
			// H01+xxx
			if (!desc.getCharacterH().isEmpty()) {
				show.append(desc.getCharacterH());
				desc.setCharacterH(show.substring(0, 3));
				show1.append(show.substring(4));
				show1.append(" ");
			}
			String show2 = show1.toString();
			disease.setDiseaseShow(show2);

			adminDao.updateDiseaseCaseById(disease);
			adminDao.updateDiseaseDescById(desc);
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
