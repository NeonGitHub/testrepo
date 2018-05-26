package cn.graProject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.DiseaseDesc;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;
import cn.graProject.entity.User;

public interface AdminDao {

	// 查找
	List<User> findAllUser(@Param("offset") int offset, @Param("limit") int limit);

	List<DiseaseCase> findAllDisease(@Param("offset") int offset, @Param("limit") int limit);

	List<Fish> findAllFish(@Param("offset") int offset, @Param("limit") int limit);
	
	List<Behave> findAllBehave(@Param("offset") int offset, @Param("limit") int limit);

	List<TreatmentCase> findAllCheckCase(@Param("offset") int offset, @Param("limit") int limit);

	DiseaseDesc findOneDiseaseDescById(@Param("diseaseId") int diseaseId);

	DiseaseCase findOneDiseaseCaseById(@Param("diseaseId") int diseaseId);
	
	TreatmentCase findOneCaseById(@Param("caseId") int caseId);
	
	TreatmentCase findOneCheckCaseById(@Param("caseId") int caseId);
	
	Behave findOneBehaveById(String id);


	// 添加
	void addDiseaseCase(DiseaseCase disease);

	void addDiseaseDesc(DiseaseDesc desc);

	void addFish(@Param("fishName") String fishName);
	
	void addBehave(Behave behave);

	void addTreatmentCase(TreatmentCase treatment);

	// 删除
	void deleteFish(@Param("fishId") int fishId);

	void deleteDiseaseDescById(@Param("diseaseId") int diseaseId);

	void deleteDiseaseCaseById(@Param("diseaseId") int diseaseId);

	void deleteCaseById(@Param("caseId") int caseId);
	
	void deleteCheckCaseById(@Param("caseId") int caseId);
	
	void deleteBehaveById(@Param("behaveId") String behaveId);

	// 更新
	void updateDiseaseCaseById(@Param("dcase") DiseaseCase dcase);

	void updateDiseaseDescById(@Param("desc") DiseaseDesc desc);

	void updateCaseById(@Param("treatment") TreatmentCase treatment);

	void updateBehaveById(@Param("behave") Behave behave);

	

}
