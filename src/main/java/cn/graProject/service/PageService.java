package cn.graProject.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.graProject.dao.PageDao;

@Service
public class PageService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PageDao pageDao;

	public int getCaseTotalPage(int pageSize) {
		int totalPage = 0;
		int total = 0;
		total = pageDao.getCaseTotalPage();
		if (total % pageSize == 0) {
			totalPage = total / pageSize;
		} else {
			totalPage = total / pageSize + 1;
		}
		return totalPage;
	}

	
	public int getDataTotalPage(int pageSize) {
		int totalPage = 0;
		int total = 0;
		total = pageDao.getDataTotalPage();
		if (total % pageSize == 0) {
			totalPage = total / pageSize;
		} else {
			totalPage = total / pageSize + 1;
		}
		return totalPage;
	}
}
