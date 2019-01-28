package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MainDAO;
import com.vo.AdminLoginVO;
import com.vo.AdminRegisterVO;

@Controller

public class MainController {
	@Autowired
	MainDAO dao;
	
	@RequestMapping(value = { "/", "index.html" }, method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("User/login");
	}
	
	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String loadLogin(Model model,HttpSession session,AdminRegisterVO registerVO) {
		
		return("User/login");
	}

	@RequestMapping(value = "/admin.html", method = RequestMethod.GET)
	public String admin(HttpSession session,Model model) {
		
		return "Admin/index";
	}
	
	@RequestMapping(value = "/user.html", method = RequestMethod.GET)
	public String user(HttpSession session,Model model) {
		
		return "User/index";
	}
	
/*	@RequestMapping(value = "/403.html", method = RequestMethod.GET)
	public String errorPage(HttpSession session,Model model) {
		
		return "User/403";
	}
*/	
	
	@RequestMapping(value="/register.html",method=RequestMethod.GET)
	public ModelAndView register(@ModelAttribute AdminRegisterVO registerVO)
	{
		return new ModelAndView("User/register","registerVO",new AdminRegisterVO());
	}
	
	@RequestMapping(value="/registerUser.html",method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute AdminRegisterVO registerVO,AdminLoginVO loginVO,@RequestParam CommonsMultipartFile uploadfile,HttpSession session) throws IOException
	{
		  ServletContext context = session.getServletContext();  
		    String path = context.getRealPath("/ProfilePics");  
		    String filename = uploadfile.getOriginalFilename();  
		  
		    System.out.println(path+" "+filename);        
		  
		    byte[] bytes =uploadfile.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
		         new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();  
		    //**** file upload ***///

		    String username= registerVO.getLoginVO().getUserName();
		    String password=registerVO.getLoginVO().getPassWord();
		    registerVO.setFileName(filename);
		    registerVO.setPath(path);
		    loginVO.setEnable("1");
		    loginVO.setRole("ROLE_ADMIN");
		    loginVO.setUserName(username);
		    loginVO.setPassWord(password);
		    registerVO.setLoginVO(loginVO);
		    dao.register(loginVO);
		    dao.register(registerVO);
		    return new ModelAndView("User/login");
	}
}

