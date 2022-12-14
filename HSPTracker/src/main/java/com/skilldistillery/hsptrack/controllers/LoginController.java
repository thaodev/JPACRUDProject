package com.skilldistillery.hsptrack.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.hsptrack.data.User;
import com.skilldistillery.hsptrack.data.UserDAO;
import com.skilldistillery.hsptrack.entities.Schedule;

@Controller
public class LoginController {
	
	@Autowired
	private UserDAO dao;
	
	//GET login.do displays the login view
	@RequestMapping(path="login.do", method = RequestMethod.GET)
	public String goToLoginForm(HttpSession session) {
		
		User user = (User)session.getAttribute("loggedInUser");
		if (user != null) {
			return "services";
		} else {
			return "index";
		}
	}
	
	//POST login.do attempts to log in the user by retrieving it from the DAO. If the userName and password
	//match the DAO data,load the User object into session, and redirect to the account page, account.do. 
	//If the login fails, display the login view.
	@RequestMapping(path="login.do", method = RequestMethod.POST)
	public String login(User user, HttpSession session, Model model) {
		user = dao.getUserByUserNameAndPassword(user.getUserName(), user.getPassword());
		System.out.println(user + " inside login.do POST method" ); 
		if (user == null) {
			return "index";
		} else {
			session.setAttribute("loggedInUser", user);
			
			return "redirect:service.do";
		}
	}
	
	
	//logout
	@RequestMapping(path="logout.do")
	public String logout(HttpSession session) {
		//logout.do remove user from session and redirects to index.do
		session.removeAttribute("loggedInUser");
		return "index";
	}

}
