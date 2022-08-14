package com.skilldistillery.hsptrack.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(path = "addService.do" )
	public String add() {
		return "addService" ;
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
	/**
	 * CREATE
	 */
	@RequestMapping(path = "addSchedule.do", method=RequestMethod.POST)
	public String addSchedule(Schedule service, Model model) {
		System.out.println("inside addService");
		boolean isScheduleAdded = false;
		Schedule scheduleAdded = dao.addNewSchedule(service);
		if (scheduleAdded != null) {
			isScheduleAdded = true;
		}
		
		model.addAttribute("schedule",scheduleAdded);
		model.addAttribute("addResult",isScheduleAdded);
		
		return "redirect:scheduleAdded.do";
	}
	@RequestMapping(path = "scheduleAdded.do", method=RequestMethod.GET)
	public String scheduleAdded(Schedule scheduleAdded, Model model) {
		List<Schedule> schedules = dao.findAll();
		model.addAttribute("schedules",schedules);
		System.out.println("inside scheduleAdded");
		return "servicesDetails";
	}
	
	@RequestMapping(path = "calculateMargin.do", method=RequestMethod.GET)
	public String calculateMargin(Model model) {
		System.out.println("inside calculate Margin");
		List<Schedule> schedules = dao.findAll();
		
		 int count = dao.calculateGrossMargin();
		
		model.addAttribute("count",count);
		model.addAttribute("schedules",schedules);
		
		return "servicesDetails";
	}
	
	/**
	 * UPDATE
	 */
	@RequestMapping(path = "updateSchedule", method=RequestMethod.GET)
	public String showFormForUpdate(int id, Model model) {
		System.out.println("inside updateService");
		
		Schedule schedule = dao.findById(id);
		
		model.addAttribute("schedule",schedule);
		
		return "updateSchedule";
	}
	@RequestMapping(path = "updateSchedule.do", method=RequestMethod.POST)
	public String updateSchedule(Schedule schedule, Model model) {
		System.out.println("inside updateService");
		
		boolean isUpdatedSuccess = dao.updateSchedule(schedule);
		
		model.addAttribute("schedule",schedule);
		model.addAttribute("updateResult",isUpdatedSuccess);
		
		return "redirect:scheduleUpdated.do";
	}
	@RequestMapping(path = "scheduleUpdated.do", method=RequestMethod.GET)
	public String scheduleUpdated(Model model) {
		List<Schedule> schedules = dao.findAll();
		model.addAttribute("schedules",schedules);
		return "servicesDetails";
	}
	
	/*
	 * DELETE
	 */
	@RequestMapping(path = "deleteSchedule", method=RequestMethod.GET)
	public String deleteSchedule(int id, Model model) {
		dao.deleteSchedule(id);
		List<Schedule> schedules = dao.findAll();
		model.addAttribute("schedules",schedules);
		return "servicesDetails";
	}
	
	
	@RequestMapping(path = "getKPIs.do" )
	public String getKPIs() {
		return "kpi" ;
	}
	@RequestMapping(path = "getAnalytics.do" )
	public String getAnalytics() {
		return "analytics" ;
	}
}
