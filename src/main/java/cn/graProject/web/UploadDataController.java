package cn.graProject.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.graProject.service.DataService;
import cn.graProject.service.LoginService;


@Controller
@RequestMapping("/Data")
public class UploadDataController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private DataService dataService;

	@RequestMapping(value = "/upload")
	public void uploadData(@RequestParam String deviceId, @RequestParam double temp, @RequestParam double tds,
			@RequestParam double ph) {
		System.out.println("devId="+deviceId+",temp="+temp+",tds="+tds+",ph="+ph+".");
		dataService.upLoadData(deviceId, temp, tds, ph);
	}

}
