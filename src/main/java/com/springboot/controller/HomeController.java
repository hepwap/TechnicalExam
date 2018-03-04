package com.springboot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spingboot.model.User;
import com.springboot.service.JsonParser;

@Controller
public class HomeController {

	@Autowired
	private JsonParser jsonParser;

	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<User> users = jsonParser.parseJson();
		model.addAttribute("users", users);
		return "homepage";
	}
	
	@RequestMapping("/profile/{id}")
	public String profile(@PathVariable("id") String id, Model model) {
		System.out.println(id);
		User user = jsonParser.getUserDetails(id);
		model.addAttribute("user", user);
		return "profile";
	}

}
