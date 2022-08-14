package com.skilldistillery.hsptrack.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.hsptrack.data.User;

@Controller
public class AccountController {
	
	@RequestMapping("account.do")
	public String goToAccountPage(HttpSession session) {
		User user = (User) session.getAttribute("loggedInUser");
		
		if (user != null) {
			return "account";
		} else {
			return "login.in";
		}
	}

}
