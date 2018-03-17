package cn.graProject.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/uploadData.do")
public class TestContro {

	
	@RequestMapping(params = "temp")
	public String testPrint(HttpServletRequest req){
		
		double temp=Double.parseDouble(req.getParameter("temp"));
		double tds=Double.parseDouble(req.getParameter("tds"));
		double ph=Double.parseDouble(req.getParameter("ph"));
		System.out.println("温度："+temp+";");
		System.out.println("TDS："+tds+";");
		System.out.println("PH："+ph+".");
		
		
		return "success";
	}
	
}
