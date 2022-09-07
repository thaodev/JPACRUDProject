package com.skilldistillery.hsptrack;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.hsptrack.data.PostDAO;
import com.skilldistillery.hsptrack.entities.Post;
import com.skilldistillery.hsptrack.entities.Schedule;

@SpringBootTest
class PostDAOImplTest {

	private Post post;
	
	@Autowired
	private PostDAO dao;



	@BeforeEach
	void setUp() throws Exception {
		post = dao.findById(1);
	}


	@AfterEach
	void tearDown() throws Exception {
		post = null;
	}

	@Test
	void test_Post_entity_correct_mapping() {
		assertNotNull(post);
	}

	@Test
	void test_add_post() {
		Post postToAdd = new Post("Array vs ArrayList", "Array is higher maintaince than arraylist");
		postToAdd = dao.addPost(postToAdd);
		int id = postToAdd.getId();
		assertTrue(id > 0);
	}
	
	@Test
	void test_search_post_by_title_or_content() {
		List<Post> posts = dao.findByKeyword("thao");
		assertNotNull(posts);
		assertTrue(posts.size() == 1);
	}



}
