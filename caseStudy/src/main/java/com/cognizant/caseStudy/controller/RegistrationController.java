package com.cognizant.caseStudy.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class RegistrationController {
	@GetMapping("registration")
	public String renderRegistrationPage() {
		return "registrationPageTable";
	}
	
	@ModelAttribute("gender")
	public List<String> getGender(){
		List<String> genders = new ArrayList<String>();
		genders.add("Male");
		genders.add("Female");
		return genders;
	}
}
