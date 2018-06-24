package com.karthik.firstApp;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	String UserName="Karthik";
	String PassWord="admin";
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String redirectToLogin() {
		return "login/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginMethod(@RequestParam("userName") String userName,@RequestParam("passWord") String passWord, Model model) {
		if((UserName.equals(userName))&&(PassWord.equals(passWord))) {
				return "list/list";
		}
		model.addAttribute("error","Invalid username or password");
		return "login/login";
	}
}
