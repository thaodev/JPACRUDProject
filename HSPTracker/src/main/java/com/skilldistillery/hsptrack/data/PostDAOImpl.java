package com.skilldistillery.hsptrack.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.hsptrack.entities.Post;
import com.skilldistillery.hsptrack.entities.Schedule;

@Service
@Transactional
public class PostDAOImpl implements PostDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Post> findByKeyword(String keyword) {
		List<Post> posts = null;
		String jpql = "SELECT p FROM Post p WHERE p.title LIKE  :keyword OR p.content LIKE :keyword";
		posts = em.createQuery(jpql, Post.class).setParameter("keyword", "%" + keyword + "%").getResultList();
		return posts;
	}

	@Override
	public List<Post> findAll() {
		List<Post> posts = null;
		String jpql = "SELECT p FROM Post p ORDER BY p.title";
		posts = em.createQuery(jpql, Post.class).getResultList();
		if(posts != null) {
			System.out.println(posts);
			return posts;
		} else {
			return null;
		}
		
	}

	@Override
	public Post addPost(Post post) {
		em.persist(post);
		
		em.flush();
		return post;
	}

}
