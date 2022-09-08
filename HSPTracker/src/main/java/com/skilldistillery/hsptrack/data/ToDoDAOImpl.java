package com.skilldistillery.hsptrack.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.hsptrack.entities.Post;
import com.skilldistillery.hsptrack.entities.ToDo;

@Service
@Transactional
public class ToDoDAOImpl implements ToDoDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public ToDo addTodo(ToDo toDo) {
	em.persist(toDo);
		
		em.flush();
		return toDo;
	}

	@Override
	public boolean isDeleted(int id) {
		ToDo toDoToDelete = em.find(ToDo.class, id);
		em.remove(toDoToDelete);
		boolean isDeleted = !em.contains(toDoToDelete);
		return isDeleted;
	}

	@Override
	public List<ToDo> toDoList() {
		List<ToDo> toDos = null;
		String jpql = "SELECT t FROM ToDo t";
		toDos = em.createQuery(jpql, ToDo.class).getResultList();
		if(toDos != null) {
			System.out.println(toDos);
			return toDos;
		} else {
			return null;
		}
	}

	@Override
	public ToDo findById(int id) {
		ToDo todo = em.find(ToDo.class, id);
		return todo;
	}

}
