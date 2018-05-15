package cn.graProject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.graProject.entity.Device;
import cn.graProject.entity.User;
import cn.graProject.service.CaseService;
import cn.graProject.service.DataService;
import cn.graProject.service.PageService;
import cn.graProject.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DataService dataService;
	@Autowired
	private CaseService caseService;
	@Autowired
	private PageService pageService;
	@Autowired
	private UserService userService;
	
	/**
	 * 从login action 登陆成功后重定向过来
	 * 
	 * @param userId
	 * @param model
	 * @param httpSession
	 * @return 管理主页面 显示用户信息
	 */
	@RequestMapping(value = "/home")
	public String userLoginSuccess(Model model, HttpSession httpSession) {
		List<User> userList=userService.findAllUser();
//		model.addAttribute("", );
		return "/admin/adminHome";
	}
	
	
	
	
}
