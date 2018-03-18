package cn.graProject.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.graProject.entity.User;
import cn.graProject.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LoginService loginService;

	@RequestMapping("/")
	public String Login(User user, Model model) {

		if (loginService.loginCompare(user.getUserId(), user.getUserPwd())) {
			model.addAttribute("user", loginService.findUser(user.getUserId()));
			return "userhome";
		} else {
			return "error";
		}
	}
}
