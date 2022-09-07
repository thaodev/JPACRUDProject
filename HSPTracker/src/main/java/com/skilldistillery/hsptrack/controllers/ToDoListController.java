package com.skilldistillery.hsptrack.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ToDoListController {
	
	@RequestMapping (path="/todolist")
	public String todoList() {
		return "toDoList";
	}

}
