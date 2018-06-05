package cn.graProject.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping("/signup")
	public String userSingUp() {
		return "forward:register.jsp";
	}

	@RequestMapping("/signin")
	public String userLogin(User user, Model model) {
		if (loginService.loginCompare(user.getUserEmail(), user.getUserPwd()) == 0) {
			User deviceuser = loginService.findUser(user.getUserEmail());
			// change database table user_info :
			// ->change user_id to user_name (varchar)
			// ->add colume user_id PRI (int)
			model.addAttribute("user", deviceuser);
			return "redirect:/personal/" + deviceuser.getUserId();
		}
		if (loginService.loginCompare(user.getUserEmail(), user.getUserPwd()) == 1) {
			User deviceuser = loginService.findUser(user.getUserEmail());
			model.addAttribute("user", deviceuser);
			return "redirect:/admin/" + deviceuser.getUserId()+"?page=1&pageSize=10";
			
		}
		return "error";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	@ResponseBody
	public String phoneLogin(@RequestBody User user, Model model) {
		if (loginService.loginCompare(user.getUserEmail(), user.getUserPwd()) == 0) {
			User deviceuser = loginService.findUser(user.getUserEmail());
			// change database table user_info :
			// ->change user_id to user_name (varchar)
			// ->add colume user_id PRI (int)
			model.addAttribute("user", deviceuser);
			return "success" ;
		}
		return "error";
	}
	
	
	
	@RequestMapping(value="/register")
	public String userRegister(User user,Model model,@RequestParam("file") MultipartFile file,HttpServletRequest requset)throws IllegalStateException, IOException {
		if (!file.isEmpty()) {

			String realPath = requset.getSession().getServletContext().getRealPath("/images/");
			String filename = file.getOriginalFilename();
			System.out.println(filename);
			user.setUserPicture(filename);
			user.setUserPermission(0);
			File filepath=new File(realPath,filename);
			if(!filepath.exists()) {
				filepath.mkdirs();
			}
			System.out.println(realPath);
			file.transferTo(new File(realPath+File.separator+filename));
			
			loginService.userRegister(user);
			model.addAttribute("user", user);
			return "redirect:/personal/" + user.getUserId();
		} else {
			return "error";
		}
	}

}
