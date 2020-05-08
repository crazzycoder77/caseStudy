package com.cognizant.caseStudy.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.caseStudy.modal.Country;
import com.cognizant.caseStudy.modal.Employee;
import com.cognizant.caseStudy.service.CountryService;
import com.cognizant.caseStudy.service.EmployeeService;

@Controller
public class RegistrationController {
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private CountryService countryService;

	@GetMapping("registrationPageTable")
	public String renderRegistrationPage(Model model) {
		model.addAttribute("employeeList", employeeService.getAllEmployee());
		return "registrationPageTable";
	}

	@GetMapping("registartionPage")
	public String addNewEmployee(Model model) {
		model.addAttribute(new Employee());
		return "registrationPage";
	}

	@PostMapping("registartionPage")
	public String saveEmployee(ModelMap model, @Valid Employee employee, BindingResult result) {
		if (result.hasErrors())
			return "registrationPage";
		employeeService.saveEmployee(employee);
		return "redirect:/registrationPageTable";
	}

	@GetMapping("edit")
	public String editEmployeeRender(ModelMap model, @RequestParam(name = "employee") Long id) {
		Employee e = employeeService.getEmployee(id);
		if(e==null)
			e = new Employee();
		model.addAttribute("employee", e);
		return "registrationPage";
	}

	@PostMapping("edit")
	public String editEmployee(ModelMap model, @Valid Employee employee, BindingResult result) {
		if (result.hasErrors())
			return "registrationPage";
		employeeService.saveEmployee(employee);
		return "redirect:/registrationPageTable";
	}

	@GetMapping("delete")
	public String deleteEmployee(ModelMap model, @RequestParam(name = "employee") Long id) {
		Employee e = employeeService.getEmployee(id);
		if(e!=null)
			employeeService.deleteEmployee(e);
		return "redirect:/registrationPageTable";
	}

	@ModelAttribute("gender")
	public List<String> getGender() {
		List<String> genders = new ArrayList<String>();
		genders.add("Male");
		genders.add("Female");
		return genders;
	}

	@ModelAttribute("countryList")
	public Map<Country, String> getCountryList() {
		Map<Country, String> countryList = new HashMap<>();
		List<Country> countries = countryService.getAllCountry();
		countries.forEach(country -> countryList.put(country, country.getName()));
		return countryList;
	}
}
