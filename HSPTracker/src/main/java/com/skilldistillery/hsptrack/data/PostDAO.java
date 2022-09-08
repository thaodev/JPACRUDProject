package com.skilldistillery.hsptrack.data;

import java.util.List;

import com.skilldistillery.hsptrack.entities.Post;

public interface PostDAO {
	Post findById(int id);
	List<Post> findByKeyword(String keyword);
	List<Post> findAll();
	Post addPost(Post post);
	boolean updatePost(Post post);
	boolean deletePost(int postId);

	
}
