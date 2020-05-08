package com.cognizant.caseStudy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.caseStudy.dao.StateDao;
import com.cognizant.caseStudy.modal.Country;
import com.cognizant.caseStudy.modal.State;

@Service
public class StateService {
	@Autowired
	private StateDao stateDao;

	@Transactional
	public List<State> getAllSatate() {
		return stateDao.findAll();
	}

	@Transactional
	public List<State> getStateByCountry(Country c) {
		return stateDao.findByCountry(c);
	}

	@Transactional
	public State getStateById(Long id) {
		Optional<State> state = stateDao.findById(id);
		if (state.isPresent())
			return state.get();
		return null;
	}
}
