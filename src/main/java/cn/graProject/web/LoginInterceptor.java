package cn.graProject.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.graProject.entity.User;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURI();  
		 if(url.indexOf("signin")>=0){  
	            return true;  
	        }  
		 if(url.indexOf("upload")>=0){  
	            return true;  
	        }  
		 if(url.indexOf("login")>=0){  
	            return true;  
	        }  
		 if(url.indexOf("phone")>=0){  
	            return true;  
	        }  
		HttpSession session = request.getSession(); 
		User user = (User) session.getAttribute("user"); 
		if(user!= null){  
            return true;  
        }  
        //不符合条件的，跳转到登录界面  
        request.getRequestDispatcher("signIn.jsp").forward(request, response);  
        return false;  

	}

}
