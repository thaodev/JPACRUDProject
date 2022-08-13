package com.skilldistillery.hsptrack.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.hsptrack.data.HspTrackerDAO;

@Controller
public class ScheduleController {
	
	@Autowired
	private HspTrackerDAO dao;
	
	@RequestMapping(path = {"/", "home.do"} )
	public String home(Model model) {
		model.addAttribute("DELETEME", dao.findById(1));// debug, delete later
		return "index" ;
	}

}
