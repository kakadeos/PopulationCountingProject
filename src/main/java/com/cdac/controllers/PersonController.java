package com.cdac.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.cdac.beans.Person;
import com.cdac.services.IPersonService;

@Controller
public class PersonController {

	@Autowired
	private IPersonService iPersonService;
	
	public String viewPersonInformation(Model model) {
		List<Person> persons = iPersonService.viewAllPersonInformation();
		model.addAttribute("persons", persons);
		return "viewPerson";
	}
}
