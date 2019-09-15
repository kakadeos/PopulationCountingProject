package com.cdac.services;

import java.util.List;

import com.cdac.beans.Person;

public interface IPersonService {

	public int addNewPersonInformation(Person person);
	public List<Person> viewAllPersonInformation();
	public int deletePersonInformation(int id);
}
