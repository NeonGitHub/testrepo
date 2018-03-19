package cn.graProject.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.graProject.entity.Device;
import cn.graProject.entity.User;
import cn.graProject.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LoginService loginService;

	@RequestMapping("/join")
	public String userSingIn(){
		return "signIn";
	}
	
	@RequestMapping("/signin")
	public String userLogin(User user, Model model) {
		if (loginService.loginCompare(user.getUserEmail(), user.getUserPwd())) {
			User deviceuser= loginService.findUser(user.getUserEmail());
			Device device=loginService.findDevice(deviceuser.getUserDev());
			
			model.addAttribute("device",device);
			model.addAttribute("user",deviceuser);
			return "personal";
		} else {
			return "error";
		}
	}
}
