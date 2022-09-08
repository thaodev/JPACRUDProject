package com.skilldistillery.hsptrack.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.hsptrack.entities.Post;

@Service
@Transactional
public class PostDAOImpl implements PostDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Post findById(int id) {
		Post post = em.find(Post.class, id);
		return post;
	}
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
	
	@Override
	public boolean updatePost(Post post) {
		boolean isUpdated = false;
		Post updatedPost = em.find(Post.class, post.getId());

		updatedPost.setTitle(post.getTitle());
		updatedPost.setContent(post.getContent());

		if (updatedPost != null) {
			isUpdated = true;
		}

		return isUpdated;

	}
	@Override
	public boolean deletePost(int postId) {
		Post postToDelete = em.find(Post.class, postId);
		em.remove(postToDelete);
		boolean isDeleted = !em.contains(postToDelete);
		return isDeleted;
	}

}
