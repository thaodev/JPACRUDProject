package com.skilldistillery.hsptrack.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.hsptrack.data.HspTrackerDAO;
import com.skilldistillery.hsptrack.entities.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private HspTrackerDAO dao;
	
	@RequestMapping(path = {"/", "home.do"} )
	public String home(Model model) {
		model.addAttribute("DELETEME", dao.findById(1));// debug, delete later
		return "index" ;
	}
	
	@RequestMapping(path = "service.do")
	public String schedule(Model model) {
		List<Schedule> schedules = dao.findAll();
		
		model.addAttribute("schedules",schedules);
		
		return "services";
	}
	
	@RequestMapping(path = "getServiceDetails.do")
	public String scheduleDetails(Model model) {
		List<Schedule> schedules = dao.findAll();
		
		model.addAttribute("schedules",schedules);
		
		return "servicesDetails";
	}

}
