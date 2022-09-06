package com.skilldistillery.hsptrack.data;

import java.util.List;

import com.skilldistillery.hsptrack.entities.Post;

public interface PostDAO {

	List<Post> findByKeyword(String keyword);
	List<Post> findAll();
	Post addPost(Post post);

	
}
