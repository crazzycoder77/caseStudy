package com.cognizant.caseStudy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.caseStudy.modal.City;
import com.cognizant.caseStudy.modal.State;

@Repository
@Qualifier("cityDao")
public interface CityDao extends JpaRepository<City, Long> {
	List<City> findByState(State s);
}
