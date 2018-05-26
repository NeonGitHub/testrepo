package cn.graProject.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.CaseDao;
import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;

@Service
public class CaseService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private CaseDao caseDao;

	public List<Fish> findAllFishType() {
		return caseDao.findAllFishType();
	}

	public List<Behave> findAllBehave() {
		return caseDao.findAllBehave();
	}

	public List<TreatmentCase> findTreatmentCase(int page, int pageSize) {
		// 计算页码开头是第几条
		int page1 = (page - 1) * pageSize;
		return caseDao.findTreatmentCase(page1, pageSize);
	}

	public TreatmentCase findTreatmentCaseInfoById(int caseId) {
		return caseDao.findTreatmentCaseInfoById(caseId);
	}

	public DiseaseCase findDiseaseCaseInfoById(int diseaseId) {
		return caseDao.findDiseaseCaseInfoById(diseaseId);
	}

	public List<DiseaseCase> findAllDiseaseCase() {
		return caseDao.findAllDiseaseCase();
	}

	public void addTreatmentCheck(TreatmentCase treatmentCheck) {
		// TODO Auto-generated method stub
		caseDao.addTreatmentCheck(treatmentCheck);
	}

}
