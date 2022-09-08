package com.skilldistillery.hsptrack.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.hsptrack.data.PostDAO;
import com.skilldistillery.hsptrack.entities.Post;

@Controller
public class PostController {
	
	@Autowired
	private PostDAO dao;
	
	@RequestMapping(path="postlist.do")
	public String postList(Model model ) {
		List<Post> posts = dao.findAll();
		model.addAttribute("posts", posts);
		return "postList";
	}
	@RequestMapping(path="postAdded.do" )
	public String postAdded(Post post) {
		Post postAdded = dao.addPost(post);
		
		return "redirect:postlist.do";
	}
	
	@RequestMapping(path="postSearch.do")
	public String postSearch(String keyword, Model model) {
		List<Post> posts = dao.findByKeyword(keyword);
		model.addAttribute("posts", posts);
		System.out.println("list of posts" + posts);
		return "postList";
	}

	@RequestMapping(path="editPost.do" )
	public String showFormToEdit(int id, Model model) {
		Post postToEdit = dao.findById(id);
		System.out.println("id of the post to edit: " + id);
		model.addAttribute("post", postToEdit);
		return "editPost";
	}
	@RequestMapping(path="editPost" )
	public String editPost(Post post, Model model) {
		System.out.println("Post needs to be update" + post.getTitle());
		dao.updatePost(post);
		
		return "redirect:postlist.do";
	}
	@RequestMapping(path="deletePost.do" )
	public String deletePost(int id) {
		Post post = dao.findById(id);
		System.out.println("Post needs to be delete" + post.getTitle());
		dao.deletePost(id);
		
		return "redirect:postlist.do";
	}
}
