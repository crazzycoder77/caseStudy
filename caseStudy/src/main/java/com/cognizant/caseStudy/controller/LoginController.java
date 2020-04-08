package com.cognizant.caseStudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@GetMapping("/")
	public String renderLoginPage(ModelMap model) {
		return "login";
	}
	
	@PostMapping("/")
	public String renderWelcome(@RequestParam String name, @RequestParam String password,
			ModelMap model) {
	model.addAttribute("name", name);
	model.addAttribute("password", password);
	return "welcome";
	}
}
