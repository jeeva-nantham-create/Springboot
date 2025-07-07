package com.example.SBDemoPrg.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SBDemoPrg.Entity.LoginDetailsEntity;
import com.example.SBDemoPrg.Repository.LoginRepo;



@Controller
@RequestMapping("/login")
public class LoginController {
	 
	@Autowired
	private LoginRepo loginrepo;
	
	@GetMapping
	private String loginpage() {
		return "LoginPage";
	}
	
	@GetMapping("/get-login-details")
	private String getlogindetails(
	        @RequestParam String useremail,
	        @RequestParam String password,
	        Model model) {

		List<LoginDetailsEntity> loginInfoList = loginrepo.findAllByUseremail(useremail);

	    for (LoginDetailsEntity logininfo : loginInfoList) {
	        if (logininfo.getPassword().equals(password)) {
	            return "main";
	        }
	    }

	    return "ErrorPage";
	}
	
	@GetMapping("/signup")
	private String signuppage() {
		return "Signup";
	}
	
	
	@PostMapping("/save-signup-details")
	private String savesignupdetails(
			@RequestParam String useremail,
			@RequestParam String username,
			@RequestParam String password,
			@RequestParam String phoneno,
			Model model) {
		LoginDetailsEntity logindetail = new LoginDetailsEntity(username,useremail,password,phoneno);
		loginrepo.save(logindetail);
		return "LoginPage";
	}
}