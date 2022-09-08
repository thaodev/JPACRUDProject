package com.skilldistillery.hsptrack.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.hsptrack.data.ToDoDAO;
import com.skilldistillery.hsptrack.entities.ToDo;

@Controller
public class ToDoListController {
	
	@Autowired
	private ToDoDAO dao;
	
	@RequestMapping (path="todolist")
	public String todoList(Model model) {
		List<ToDo> list = dao.toDoList();
		System.out.println(list);
		model.addAttribute("list", list);
		return "toDoList";
	}
	@RequestMapping (path="addToDo")
	public String addToDo(ToDo todo) {
		dao.addTodo(todo);
		return "redirect:todolist";
	}
	@RequestMapping (path="deleteToDo")
	public String deleteToDo(int id) {
		dao.isDeleted(id);
		return "redirect:todolist";
	}

	
}
