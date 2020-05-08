package com.cognizant.caseStudy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.caseStudy.modal.Country;
import com.cognizant.caseStudy.modal.State;

@Repository
@Qualifier("stateDao")
public interface StateDao extends JpaRepository<State, Long> {
	List<State> findByCountry(Country c);
}
