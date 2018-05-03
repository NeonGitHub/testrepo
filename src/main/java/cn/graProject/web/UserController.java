package cn.graProject.web;

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
import org.springframework.web.bind.annotation.ResponseBody;

import cn.graProject.entity.Device;
import cn.graProject.entity.User;
import cn.graProject.service.DataService;

@Controller
public class UserController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private DataService dataService;

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

	@RequestMapping(value = "/")
	public String showNewData() {
		return null;
	}

	@RequestMapping(value = "/histroy", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> histroyData(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		return dataService.findAllData(user.getUserDev());
	}

}
