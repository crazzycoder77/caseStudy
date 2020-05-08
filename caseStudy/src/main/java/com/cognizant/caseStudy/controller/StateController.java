package com.cognizant.caseStudy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.caseStudy.modal.Country;
import com.cognizant.caseStudy.modal.State;
import com.cognizant.caseStudy.service.StateService;

@RestController
public class StateController {
	@Autowired
	private StateService stateService;

	@GetMapping("/state")
	public List<State> getStates(@RequestParam(name = "country") Country c) {
		List<State> states = stateService.getStateByCountry(c);
		return states;
	}
}
