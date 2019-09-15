package com.cdac.dao;

import java.util.List;

import com.cdac.beans.Person;

public interface IPersonDao {

	public int addNewPersonInformation(Person person);
	public List<Person> viewAllPersonInformation();
	public int deletePersonInformation(int id);
}
