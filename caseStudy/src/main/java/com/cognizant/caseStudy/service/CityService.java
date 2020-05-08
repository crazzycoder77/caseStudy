package com.cognizant.caseStudy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.caseStudy.dao.CityDao;
import com.cognizant.caseStudy.modal.City;
import com.cognizant.caseStudy.modal.State;

@Service
public class CityService {
	@Autowired
	private CityDao cityDao;

	@Transactional
	public List<City> getAllCities() {
		return cityDao.findAll();
	}

	@Transactional
	public City getCityById(long id) {
		Optional<City> city = cityDao.findById(id);
		if (city.isPresent())
			return city.get();
		return null;
	}

	@Transactional
	public List<City> getCitiesByState(State s) {
		return cityDao.findByState(s);
	}
}
