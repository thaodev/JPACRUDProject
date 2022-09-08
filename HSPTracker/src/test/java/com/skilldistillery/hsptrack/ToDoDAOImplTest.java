package com.skilldistillery.hsptrack;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.hsptrack.data.ToDoDAO;
import com.skilldistillery.hsptrack.entities.ToDo;

@SpringBootTest
class ToDoDAOImplTest {
	@Autowired
	private ToDoDAO dao;
	
	private ToDo toDo;

	@BeforeEach
	void setUp() throws Exception {
		toDo = dao.findById(1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		toDo = null;
	}

	@Test
	void test_TODO_entity_mapping() {
		System.out.println(toDo.getContent());
		assertNotNull(toDo);
		
	}
	


}
