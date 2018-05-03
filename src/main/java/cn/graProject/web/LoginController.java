package cn.graProject.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.graProject.entity.Device;
import cn.graProject.entity.User;
import cn.graProject.service.LoginService;

@Controller
@SessionAttributes("user")
public class LoginController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LoginService loginService;

	@RequestMapping("/join")
	public String userSingIn() {
		return "forward:signIn.jsp";
	}

	@RequestMapping("/signin")
	public String userLogin(User user, Model model) {
		if (loginService.loginCompare(user.getUserEmail(), user.getUserPwd())) {
			User deviceuser = loginService.findUser(user.getUserEmail());
			// change database table user_info :
			// ->change user_id to user_name (varchar)
			// ->add colume user_id PRI (int)
			model.addAttribute("user",deviceuser);
			return "redirect:/personal/" + deviceuser.getUserId();
		} else {
			return "error";
		}
	}

}
