package cn.graProject.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.graProject.dto.AnalysisDto;
import cn.graProject.dto.CaseDto;
import cn.graProject.entity.Behave;
import cn.graProject.entity.Device;
import cn.graProject.entity.DeviceWarn;
import cn.graProject.entity.DiseaseCase;
import cn.graProject.entity.Fish;
import cn.graProject.entity.TreatmentCase;
import cn.graProject.entity.User;
import cn.graProject.service.CaseService;
import cn.graProject.service.DataService;
import cn.graProject.service.PageService;

@Controller
public class UserController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private DataService dataService;
	@Autowired
	private CaseService caseService;
	@Autowired
	private PageService pageService;

	/**
	 * 从login action 登陆成功后重定向过来
	 * 
	 * @param userId
	 * @param model
	 * @param httpSession
	 * @return 用户个人主页页面 含有设备的信息
	 */
	@RequestMapping(value = "/personal/{userId}")
	public String userLoginSuccess(@PathVariable("userId") String userId, Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		Device device = dataService.findNewData(user.getUserDev());
		model.addAttribute("device", device);
		// model.addAttribute("user", user);
		// change database table user_info :
		// ->change user_id to user_name (varchar)
		// ->add colume user_id PRI (int)
		return "personal";
	}

	/**
	 * 个人数据 历史数据折线图 异步请求
	 * 
	 * @param httpSession
	 * @return
	 */
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> historyData(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		return dataService.findAllData(user.getUserDev());
	}

	/**
	 * 手机查询 异步请求
	 * 
	 * @param httpSession
	 * @return
	 */
	@RequestMapping(value = "/phone/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> phoneData(@PathVariable("id") String id) {
		Device device = dataService.findNewData(id);
		DeviceWarn dw=dataService.findDeviceWarn(id);
		Map<String, Object> datajson=new HashMap<String, Object>();
		long time=device.getUploadTime().getTime();
		datajson.put("phMax", dw.getPhMax());
		datajson.put("phMin", dw.getPhMin());
		datajson.put("tdsMax", dw.getTdsMax());
		datajson.put("tdsMin", dw.getTdsMin());
		datajson.put("tempMax", dw.getTempMax());
		datajson.put("tempMin", dw.getTempMin());
		datajson.put("time",time);
		datajson.put("ph",device.getPhData());
		datajson.put("tds",device.getTdsData());
		datajson.put("temp",device.getTempData());
		return datajson;
	}

	/**
	 * 历史数据查询
	 * 
	 * @param httpSession
	 * @param page
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/historyList")
	public String histroyList(HttpSession httpSession, @RequestParam int page, @RequestParam int pageSize,
			Model model) {
		// 页码处理
		int totalPage = pageService.getDataTotalPage(pageSize);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		User user = (User) httpSession.getAttribute("user");
		List<Device> historyList = dataService.findDataByPage(user.getUserDev(), page, pageSize);

		model.addAttribute("historyList", historyList);
		return "historyList";

	}

	/**
	 * 案例分析（1） —>填写案例特征
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/caseAnalysis")
	public String caseAnalysis(Model model) {
		List<Fish> fishList = caseService.findAllFishType();
		List<Behave> behaveList = caseService.findAllBehave();
		model.addAttribute("behaveList", behaveList);
		model.addAttribute("fishList", fishList);
		return "caseAnalysis";
	}

	/**
	 * 案例分析（2） ->提交案例特征
	 * 
	 * @return
	 */
	@RequestMapping(value = "/caseAnalysisSubmit")
	public String caseAnalysisOne(HttpSession httpSession,Model model, CaseDto caseDto) {
		List<AnalysisDto> analysisDtoList = caseService.analysisCase(caseDto);
		httpSession.setAttribute("caseDto", caseDto);
		model.addAttribute("analysisDtoList", analysisDtoList);
		// 跳转到“分析”页面 取前10个相似案例
		return "caseAnalysis2";
	}

	/**
	 * 案例分析(3) ->显示案例详情,并评分
	 * @param model
	 * @param caseId
	 * @param diseaseId
	 * @return
	 */
	@RequestMapping(value = "/caseAnalysis2")
	public String caseAnalysisTwo(int caseId,int diseaseId,double d1,double d3,Model model) {
		// 根据id找到案例并展示
		TreatmentCase treatmentCase = caseService.findTreatmentCaseInfoById(caseId);
		DiseaseCase diseaseCase = caseService.findDiseaseCaseInfoById(diseaseId);
		model.addAttribute("d1",d1);
		model.addAttribute("d3",d3);
		model.addAttribute("treatmentCase", treatmentCase);
		model.addAttribute("diseaseCase", diseaseCase);
		return "caseAnalysis3";
	}
	
	@RequestMapping(value="/caseReview")
	public String caseAnalysisThree(TreatmentCase treatmentCheck, Model model) {
		caseService.addTreatmentCheck(treatmentCheck);
		return "redirect:/caseAnalysis";
	}

	/**
	 * 查看案例 向页面返回案例列表
	 * 
	 * @param page
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/caseList")
	public String caseList(@RequestParam int page, @RequestParam int pageSize, Model model) {
		int totalPage = pageService.getCaseTotalPage(pageSize);
		List<TreatmentCase> treatmentCaseList = caseService.findTreatmentCase(page, pageSize);

		model.addAttribute("treatmentCaseList", treatmentCaseList);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		return "caseList";

	}

	/**
	 * 在案例列表里点某个案例后 案例详情
	 * 
	 * @param caseId
	 * @param diseaseId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/caseInfo/{caseId}/diseaseId/{diseaseId}")
	public String caseInfo(@PathVariable("caseId") int caseId, @PathVariable("diseaseId") int diseaseId, Model model) {
		TreatmentCase treatmentCase = caseService.findTreatmentCaseInfoById(caseId);
		DiseaseCase diseaseCase = caseService.findDiseaseCaseInfoById(diseaseId);

		model.addAttribute("treatmentCase", treatmentCase);
		model.addAttribute("diseaseCase", diseaseCase);
		return "caseInfo";
	}

	/**
	 * 转向案例添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/caseAdd")
	public String caseAdd(Model model) {
		List<Fish> fishList = caseService.findAllFishType();
		List<DiseaseCase> diseaseList = caseService.findAllDiseaseCase();
		String fishJson = JSONArray.toJSONString(fishList);
		String diseaseJson = JSONArray.toJSONString(diseaseList);
		model.addAttribute("fishList", fishJson);
		model.addAttribute("diseaseList", diseaseJson);
		return "caseAdd";

	}

	/**
	 * 案例添加 提交审核
	 * 
	 * @param treatmentCheck
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/caseSubmit")
	public String caseSubmit(TreatmentCase treatmentCheck, Model model) {
		caseService.addTreatmentCheck(treatmentCheck);
		return "redirect:/caseAdd";
	}
	
	@RequestMapping(value="/warning/{userDev}")
	public String personWarining(@PathVariable("userDev") String userDev,Model model,HttpSession httpSession){
		DeviceWarn dw=dataService.findDeviceWarn(userDev);
		httpSession.setAttribute("dw", dw);
		return "warning";
	}
	
	@RequestMapping(value="/settings/{userId}")
	public String personSetting(@PathVariable("userId") String userId,DeviceWarn dw,Model model,HttpSession httpSession){
		dataService.addWarningSettings(dw);
		httpSession.setAttribute("dw",dw);
		return "redirect:/personal/" + userId;
	}
}
