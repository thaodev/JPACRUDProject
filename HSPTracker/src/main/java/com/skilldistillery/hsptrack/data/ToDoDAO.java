package com.skilldistillery.hsptrack.data;

import java.util.List;

import com.skilldistillery.hsptrack.entities.ToDo;

public interface ToDoDAO {
	ToDo addTodo(ToDo toDo);
	List<ToDo> toDoList();
	boolean isDeleted(int id);
	ToDo findById(int id);

}
