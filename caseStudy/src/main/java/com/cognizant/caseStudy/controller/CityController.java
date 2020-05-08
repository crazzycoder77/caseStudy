package com.cognizant.caseStudy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.caseStudy.modal.City;
import com.cognizant.caseStudy.modal.State;
import com.cognizant.caseStudy.service.CityService;

@RestController
public class CityController {
	@Autowired
	private CityService cityService;

	@GetMapping("/city")
	public List<City> getCity(@RequestParam(name = "state") State s) {
		List<City> cities = cityService.getCitiesByState(s);
		return cities;
	}
}
