package com.cdac.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.beans.Person;
import com.cdac.services.IPersonService;

@Controller
@RequestMapping(value="/")
public class PersonController {

	@Autowired
	private IPersonService iPersonService;
	
	@RequestMapping("/addPerson")    
    public String showAddPersonForm(Model model){    
        model.addAttribute("person", new Person());  
        return "addPerson";   
    }
	
	@RequestMapping(value="/savePersonDetails",method = RequestMethod.POST)    
    public String save(@ModelAttribute("person") Person person){    
        iPersonService.addNewPersonInformation(person);    
        return "redirect:/viewPersons";    
    }    
	
	@RequestMapping("/viewPersons")
	public String viewPersonInformation(Model model) {
		List<Person> persons = iPersonService.viewAllPersonInformation();
		model.addAttribute("persons", persons);
		return "viewPersons";
	}
	
	@RequestMapping(value="/deletePerson/{id}",method = RequestMethod.GET)    
    public String deletePerson(@PathVariable int id){    
        iPersonService.deletePersonInformation(id);    
        return "redirect:/viewPersons";    
    }  
}
