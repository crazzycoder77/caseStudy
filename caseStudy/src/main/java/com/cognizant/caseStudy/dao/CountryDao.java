package com.cognizant.caseStudy.dao;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.caseStudy.modal.Country;

@Repository
@Qualifier("countryDao")
public interface CountryDao extends JpaRepository<Country, Long> {

}
