package com.cognizant.caseStudy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.caseStudy.dao.EmployeeDao;
import com.cognizant.caseStudy.modal.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao employeeDao;

	@Transactional
	public List<Employee> getAllEmployee() {
		return employeeDao.findAll();
	}

	@Transactional
	public Employee getEmployee(Long id) {
		Optional<Employee> employee = employeeDao.findById(id);
		if (employee.isPresent())
			return employee.get();
		return null;
	}

	@Transactional
	public void saveEmployee(Employee e) {
		employeeDao.save(e);
	}

	@Transactional
	public void deleteEmployee(Employee e) {
		employeeDao.delete(e);
	}
}
