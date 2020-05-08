package com.cognizant.caseStudy.dao;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.caseStudy.modal.Employee;

@Repository
@Qualifier("employeeDao")
public interface EmployeeDao extends JpaRepository<Employee, Long>{

}
