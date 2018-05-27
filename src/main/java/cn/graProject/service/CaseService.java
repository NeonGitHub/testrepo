package cn.graProject.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.CaseDao;
import cn.graProject.dto.AnalysisDto;
import cn.graProject.dto.CaseDto;
import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.DiseaseDesc;
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
		caseDao.addTreatmentCheck(treatmentCheck);
	}

	/**
	 * 案例分析-案例推理方法！ （1）将Dto中的环境值和病例解析分开 （2）将解析的病例disease和病例库disease_desc进行knn比较
	 * （3）定位疾病 （4）比较环境值 （5）确定前10个案例并返回
	 * 
	 * @param caseDto
	 * @return 前10名相似的案例列表
	 */
	public List<AnalysisDto> analysisCase(CaseDto caseDto) {
		DiseaseDesc desc = new DiseaseDesc();
		desc.setCharacterA(caseDto.getCharacterA());
		desc.setCharacterB(caseDto.getCharacterB());
		desc.setCharacterC(caseDto.getCharacterC());
		desc.setCharacterD(caseDto.getCharacterD());
		desc.setCharacterE(caseDto.getCharacterE());
		desc.setCharacterF(caseDto.getCharacterF());
		desc.setCharacterG(caseDto.getCharacterG());
		desc.setCharacterH(caseDto.getCharacterH());
		List<DiseaseDesc> descList = caseDao.findAllDiseaseDesc();
		Map<Integer, Double> dismap = new HashMap<Integer, Double>();
		
		//进行knn比较疾病特征值
		dismap = calculateKnn(desc, descList);
		//排序
		List<Map.Entry<Integer, Double>> list = new ArrayList<Map.Entry<Integer, Double>>(dismap.entrySet());
		Collections.sort(list, new Comparator<Map.Entry<Integer, Double>>() {
			@Override
			public int compare(Entry<Integer, Double> o1, Entry<Integer, Double> o2) {
				return o1.getValue().compareTo(o2.getValue());
			}
		});
		//新建一个dto 和list
		List<AnalysisDto> aftersortList = new ArrayList<AnalysisDto>();
		
		/*
		 * for (Map.Entry<Integer, Double> mapping : list) {
		 * System.out.println(mapping.getKey() + ":" + mapping.getValue()); }
		 */
		// 用list保存要展示的前10个 analysisDto
		int len=0;
		if(list.size()<10) {
			len=list.size();
		}else {
			len=10;
		}
		for (int num = 0; num < len; num++) {
			//化成百分比
//			analysisDto.setDistance1(100 - (double)Math.round(list.get(num).getValue() * 1000) / 1000);
			AnalysisDto analysisDto = new AnalysisDto();
			analysisDto.setDistance1(list.get(num).getValue());
			//list.get(num).getKey()是疾病编号！！
			// TODO bug
			analysisDto.setTreatment(caseDao.findTreatmentCaseInfoById(list.get(num).getKey()));
			aftersortList.add(analysisDto);
		}
		//进行鱼种 环境值计算距离
		aftersortList=calculateEnviron(caseDto, aftersortList);
		//进行排序
		Collections.sort(aftersortList,new Comparator<AnalysisDto>() {
			@Override
			public int compare(AnalysisDto o1, AnalysisDto o2) {
				if(o1.getDistance1()==o2.getDistance1()) {
					if(o1.getDistance2()==o2.getDistance2()) {
					     return compareDouble(o1.getDistance3(), o2.getDistance3());
					}else {
//						return o2.getDistance2()-o1.getDistance2();
						return compareInt(o1.getDistance2(), o2.getDistance2());
					}
				}else {
					return compareDouble(o1.getDistance1(), o2.getDistance1());
				}
			}
		});
		
		return aftersortList;

	}

	/**
	 * 计算knn
	 * 
	 * @param x
	 * @param list
	 * @return
	 */
	public static Map<Integer, Double> calculateKnn(DiseaseDesc x, List<DiseaseDesc> list) {

		
		Map<Integer, Double> dismap = new HashMap<Integer, Double>();
		for (DiseaseDesc y : list) {
			double distance = 0.00;
			// 欧式距离 distance=[(x1-y1)^2+(x2-y2)^2+..+(x^n-yn)^2]^0.5
			for (int j = 1; j < 9; j++) {
				distance += Math.pow(x.getCharacterbyNum(j) - y.getCharacterbyNum(j), 2);
			}
			distance = Math.sqrt(distance);
			distance = (double)Math.round(distance*1000)/1000;
			
			// 还是用Map存放 key-病例ID value-距离
			dismap.put(y.getDiseaseId(), distance);
			distance = 0;
		}
		return dismap;
	}

	/**
	 * 计算10个案例环境值的匹配度
	 */
	public static List<AnalysisDto> calculateEnviron(CaseDto caseDto, List<AnalysisDto> aftersortList) {
		
		// 计算distance2 鱼种是否相等
		for (AnalysisDto dto : aftersortList) {
			double distance = 0.00;
			if (caseDto.getFishName().equals(dto.getTreatment().getFishName())) {
				// 鱼种相同则置0
				dto.setDistance2(0);
			} else {
				dto.setDistance2(1);
			}
			// 欧式距离 distance=[(x1-y1)^2+(x2-y2)^2+..+(x^n-yn)^2]^0.5
			distance += Math.pow(caseDto.getPhData() - dto.getTreatment().getPhData(), 2);
			distance += Math.pow(caseDto.getTdsData() - dto.getTreatment().getTdsData(), 2);
			distance += Math.pow(caseDto.getTempData() - dto.getTreatment().getTempData(), 2);
			distance = Math.sqrt(distance);
//			distance = (double)Math.round(distance*1000)/1000;
			dto.setDistance3(distance);
			distance = 0;
		}
		return aftersortList;
	}

	public static int compareDouble(double d1, double d2) {
		if (d1 < d2) {
			return -1;
		}
		if (d1 > d2) {
			return 1;
		}
		return 0;
	}
	public static int compareInt(int d1, int d2) {
		if (d1 < d2) {
			return -1;
		}
		if (d1 > d2) {
			return 1;
		}
		return 0;
	}
}
