package cn.graProject.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONArray;

import cn.graProject.dto.DiseaseDto;
import cn.graProject.entity.Behave;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.DiseaseDesc;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;
import cn.graProject.entity.User;
import cn.graProject.service.CaseService;
import cn.graProject.service.DataService;
import cn.graProject.service.PageService;
import cn.graProject.service.AdminService;

/**
 * @author zhangjingxuan
 *
 */
/**
 * @author zhangjingxuan
 *
 */
/**
 * @author zhangjingxuan
 *
 */
/**
 * @author zhangjingxuan
 *
 */
/**
 * @author zhangjingxuan
 *
 */
/**
 * @author zhangjingxuan
 *
 */
@Controller
public class AdminController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private DataService dataService;
	@Autowired
	private CaseService caseService;
	@Autowired
	private PageService pageService;
	@Autowired
	private AdminService adminService;

	/**
	 * 从login action 登陆成功后重定向过来
	 * 
	 * @param userId
	 * @param model
	 * @param httpSession
	 * @return 管理主页面 显示用户信息
	 */
	@RequestMapping(value = "/admin/{adminId}")
	public String userLoginSuccess(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getDataTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<User> userList = adminService.findAllUser(page, pageSize);
		model.addAttribute("userList", userList);
		return "/admin/adminHome";
	}

	/**
	 * 管理疾病(1)--查看疾病列表
	 * 
	 * @param model
	 * @param page
	 * @param pageSize
	 * @return
	 */
	@RequestMapping(value = "/admin/findDisease")
	public String findDisease(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getDiseaseTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<DiseaseCase> diseaseList = adminService.findAllDisease(page, pageSize);
		model.addAttribute("diseaseList", diseaseList);
		return "/admin/adminFindDisease";
	}

	/**
	 * 管理疾病(2)--添加疾病 第1步 这个是转到添加疾病页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/addDisease")
	public String addDiseaseOne(Model model) {
		// List<Fish> fishList = caseService.findAllFishType();
		List<Behave> behaveList = caseService.findAllBehave();
		model.addAttribute("behaveList", behaveList);
		// model.addAttribute("fishList", fishList);
		return "/admin/adminAddDisease";
	}

	/**
	 * 管理疾病(2)--添加疾病 第2步 这个是将疾病添加到库中,然后返回add页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/addDisease2")
	public String addDiseaseTwo(Model model, DiseaseCase disease, DiseaseDesc desc) {

		adminService.addDiseaseCase(disease, desc);

		List<Behave> behaveList = caseService.findAllBehave();
		model.addAttribute("behaveList", behaveList);
		return "/admin/adminAddDisease";
	}

	/**
	 * 管理疾病(3)--删除疾病
	 * 
	 * @param model
	 * @param diseaseId
	 * @return
	 */
	@RequestMapping(value = "/admin/deleteDisease/{diseaseId}")
	public String deleteDisease(Model model, @PathVariable("diseaseId") int diseaseId) {
		adminService.deleteDiseaseById(diseaseId);
		return "redirect:/admin/findDisease?page=1&pageSize=10";
	}

	/**
	 * 管理疾病(4)--更新疾病信息1 进入更新页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/updateDisease/{diseaseId}")
	public String updateDiseaseOne(Model model, @PathVariable("diseaseId") int diseaseId) {
		DiseaseDesc desc = adminService.findOneDiseaseDescById(diseaseId);
		DiseaseCase dcase = adminService.findOneDiseaseCaseById(diseaseId);
		if (desc.getDiseaseId() == dcase.getDiseaseId()) {
			List<Behave> behaveList = caseService.findAllBehave();
			model.addAttribute("behaveList", behaveList);
			model.addAttribute("diseaseDesc", desc);
			model.addAttribute("diseaseCase", dcase);
			return "/admin/adminUpdateDisease";
		} else {
			return "error";
		}
	}

	/**
	 * 管理疾病(5)--更新疾病信息2 表单提交
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/updateDisease2")
	public String updateDiseaseTwo(Model model, DiseaseCase disease, DiseaseDesc desc) {
		adminService.updateDiseaseCaseById(disease, desc);
		return "redirect:/admin/findDisease?page=1&pageSize=10";
	}

	/**
	 * 管理生物种类(1)--查看生物种类列表
	 * 
	 * @param model
	 * @param page
	 * @param pageSize
	 * @return
	 */
	@RequestMapping(value = "/admin/findFish")
	public String findFish(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getFishTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<Fish> fishList = adminService.findAllFish(page, pageSize);
		model.addAttribute("fishList", fishList);
		return "/admin/adminFindFish";
	}

	/**
	 * 管理生物种类(2)--添加鱼种
	 * 
	 * @param model
	 * @param fish
	 * @return
	 */

	@RequestMapping(value = "/admin/addFish")
	public String addFishOne() {
		return "/admin/adminAddFish";
	}

	@RequestMapping(value = "/admin/addFish2")
	public String addFishTwo(Fish fish) {
		adminService.addFish(fish);
		return "redirect:/admin/findFish?page=1&pageSize=10";
	}

	/**
	 * 管理生物种类(3)--删除鱼种
	 * 
	 * @param fishId
	 * @return
	 */
	@RequestMapping(value = "/admin/deleteFish/{fishId}")
	public String deleteFish(@PathVariable("fishId") int fishId) {
		adminService.deleteFishById(fishId);
		return "redirect:/admin/findFish?page=1&pageSize=10";
	}

	/**
	 * 管理特征（1）--查找所有特征
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/findBehave")
	public String findBehave(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getBehaveTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<Behave> BehaveList = adminService.findAllBehave(page, pageSize);
		model.addAttribute("BehaveList", BehaveList);
		return "/admin/adminFindBehave";
	}

	/**
	 * 管理特征（2）--添加特征
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/addBehave")
	public String addBehaveOne() {
		return "/admin/adminAddBehave";
	}

	@RequestMapping(value = "/admin/addBehave2")
	public String addBehaveTwo(Behave behave) {
		adminService.addBehave(behave);
		return "redirect:/admin/findBehave?page=1&pageSize=10";
	}

	/**
	 * 管理特征（3）--更新特征1 进入具体信息页面
	 * 
	 * @return
	 */
	@RequestMapping(value="/admin/updateBehave/{behaveId}")
	public String updateBehaveOne(Model model,@PathVariable("behaveId") String behaveId) {
		Behave behave=adminService.findOneBehaveById(behaveId);
		model.addAttribute("behave", behave);
		return "/admin/adminUpdateBehave";
	}

	/**
	 * 管理特征（4）--更新特征2 插入数据库
	 * 
	 * @return
	 */
	@RequestMapping(value="/admin/updateBehave2")
	public String updateBehaveTwo(Model model,Behave behave) {
		adminService.updateBehaveById(behave);
		return "redirect:/admin/findBehave?page=1&pageSize=10";
	}
	
	/**
	 * 管理特征（5）--删除特征
	 * @return
	 */
	@RequestMapping(value="/admin/deleteBehave/{behaveId}")
	public String deleteBehave(@PathVariable("behaveId") String behaveId) {
		adminService.deleteBehaveById(behaveId);
		return "redirect:/admin/findBehave?page=1&pageSize=10";
	}

	/**
	 * 管理案例(1) --查看治愈案例
	 * 
	 * @param model
	 * @param page
	 * @param pageSize
	 * @return
	 */
	@RequestMapping(value = "/admin/findCase")
	public String findCase(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getCaseTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<TreatmentCase> treatmentList = caseService.findTreatmentCase(page, pageSize);
		model.addAttribute("treatmentList", treatmentList);
		return "/admin/adminFindCase";
	}

	/**
	 * 管理案例(2) --查看审核案例
	 * 
	 * @param model
	 * @param page
	 * @param pageSize
	 * @return
	 */
	@RequestMapping(value = "/admin/findCheckCase")
	public String findCheckCase(Model model, @RequestParam int page, @RequestParam int pageSize) {
		// 页码处理
		int totalPage = pageService.getCheckCaseTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		List<TreatmentCase> treatmentList = adminService.findAllCheckCase(page, pageSize);
		model.addAttribute("treatmentList", treatmentList);
		return "/admin/adminCheckCase";
	}

	/**
	 * 管理案例(3)--添加案例1 跳转添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/addCase")
	public String addCaseOne(Model model) {
		List<Fish> fishList = caseService.findAllFishType();
		List<DiseaseCase> diseaseList = caseService.findAllDiseaseCase();
		String fishJson = JSONArray.toJSONString(fishList);
		String diseaseJson = JSONArray.toJSONString(diseaseList);
		model.addAttribute("fishList", fishJson);
		model.addAttribute("diseaseList", diseaseJson);
		return "/admin/adminAddCase";
	}

	/**
	 * 管理案例(4)--添加案例2 插入数据库 跳转主页面
	 * 
	 * @param treatment
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/addCase2")
	public String addCaseTwo(TreatmentCase treatment, Model model) {
		adminService.addTreatmentCase(treatment);
		return "redirect:/admin/findCase?page=1&pageSize=10";
	}

	/**
	 * 管理案例(5)--删除案例库中案例
	 * 
	 * @param model
	 * @return
	 * @return
	 */
	@RequestMapping(value = "/admin/deleteCase/{caseId}")
	public String deleteCase(@PathVariable("caseId") int caseId) {
		adminService.deleteCaseById(caseId);
		return "redirect:/admin/findCase?page=1&pageSize=10";
	}

	/**
	 * 管理案例(6)--更改案例库中案例
	 * 
	 * @param caseId
	 * @return
	 */
	@RequestMapping(value = "/admin/updateCase/{caseId}")
	public String updateCaseOne(@PathVariable("caseId") int caseId, Model model) {
		TreatmentCase treatment = adminService.findOneCaseById(caseId);
		List<Fish> fishList = caseService.findAllFishType();
		List<DiseaseCase> diseaseList = caseService.findAllDiseaseCase();
		String fishJson = JSONArray.toJSONString(fishList);
		String diseaseJson = JSONArray.toJSONString(diseaseList);
		model.addAttribute("fishList", fishJson);
		model.addAttribute("diseaseList", diseaseJson);
		model.addAttribute("diseaseList2", diseaseList);
		model.addAttribute("treatment", treatment);
		return "/admin/adminCaseInfo";
	}

	/**
	 * 管理案例(7)--更改案例 提交
	 * 
	 * @param caseId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/updateCase2")
	public String updateCaseTwo(TreatmentCase treatment, Model model) {
		adminService.updateCaseById(treatment);

		return "redirect:/admin/findCase?page=1&pageSize=10";
	}

	/**
	 * 管理案例(8)--审核案例功能 删除(不通过)
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/deleteCheckCase/{caseId}")
	public String deleteCheckCase(@PathVariable("caseId") int caseId) {
		adminService.deleteCheckCaseById(caseId);
		return "redirect:/admin/findCheckCase?page=1&pageSize=10";
	}

	/**
	 * 管理案例(9)--审核案例--通过 by Id
	 * 
	 * @return
	 */
	@RequestMapping(value = "/admin/passCheckCase/{caseId}")
	public String passCheckCase(@PathVariable("caseId") int caseId) {
		// 找到 删除 添加
		adminService.passOneCheckCaseById(caseId);
		return "redirect:/admin/findCheckCase?page=1&pageSize=10";
	}

	/**
	 * 管理案例(10)--审核案例--审核案例的详情
	 * 
	 * @param caseId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/findOneCheckCase/{caseId}")
	public String findOneCheckCase(@PathVariable("caseId") int caseId, Model model) {
		TreatmentCase treatment = adminService.findOneCheckCaseById(caseId);
		List<Fish> fishList = caseService.findAllFishType();
		List<DiseaseCase> diseaseList = caseService.findAllDiseaseCase();
		String fishJson = JSONArray.toJSONString(fishList);
		String diseaseJson = JSONArray.toJSONString(diseaseList);
		model.addAttribute("fishList", fishJson);
		model.addAttribute("diseaseList", diseaseJson);
		model.addAttribute("diseaseList2", diseaseList);
		model.addAttribute("treatment", treatment);
		return "/admin/adminCheckCaseInfo";
	}

	/**
	 * 管理案例(11)--通过(更改后的)案例
	 * 
	 * @param caseId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin/passCheckCase2")
	public String passCheckCaseTwo(TreatmentCase treatment) {
		adminService.passOneCheckCaseByTreatment(treatment);
		return "redirect:/admin/findCheckCase?page=1&pageSize=10";
	}

}
