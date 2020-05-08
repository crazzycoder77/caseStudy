package com.cognizant.caseStudy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.caseStudy.dao.CountryDao;
import com.cognizant.caseStudy.modal.Country;

@Service
public class CountryService {
	@Autowired
	private CountryDao countryDao;

	@Transactional
	public List<Country> getAllCountry() {
		return countryDao.findAll();
	}

	@Transactional
	public Country findCountryById(long id) {
		Optional<Country> country = countryDao.findById(id);
		if (country.isPresent())
			return country.get();
		return null;
	}
}
