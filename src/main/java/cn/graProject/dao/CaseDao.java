package cn.graProject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.DiseaseDesc;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;


public interface CaseDao {

	/**
	 * 查询所有鱼种
	 * @return 鱼种列表
	 */
	List<Fish> findAllFishType();

	
	
	/**
	 * 查询所有行为
	 * Behave:
	 * ID：A01
	 * DESC:"体表发黑"
	 * PART:"体表"
	 * VALUE:100
	 * @return 行为列表
	 */
	List<Behave> findAllBehave();
	

	/**
	 * 查询所有治愈案例，参数页码（起始数据offset）和页码大小（多少数据limit）
	 * @param page -> offset
	 * @param pageSize -> limit
	 * @return
	 */
	List<TreatmentCase> findTreatmentCase(@Param("offset") int offset,@Param("limit") int limit);



	/**
	 * 查询一个治愈案例详情
	 * @param caseId 案例编号
	 * @return TreatmentCase案例详情
	 */
	TreatmentCase findTreatmentCaseInfoById(@Param("caseId") int caseId);



	/**
	 * 查询一个疾病案例的详情
	 * @param diseaseId 疾病编号
	 * @return 疾病案例详情
	 */
	DiseaseCase findDiseaseCaseInfoById(@Param("diseaseId") int diseaseId);



	/**
	 * 查询所有疾病案例
	 * @return
	 */
	List<DiseaseCase> findAllDiseaseCase();



	/**
	 * 添加待审核案例
	 * 这里用了和上面不同的传参方式
	 * @param treatmentCheck
	 */
	void addTreatmentCheck(TreatmentCase treatmentCheck);



	/**
	 * 查找疾病描述列表，用来案例分析
	 * @return
	 */
	List<DiseaseDesc> findAllDiseaseDesc();


}
