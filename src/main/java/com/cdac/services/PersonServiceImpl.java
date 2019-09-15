package com.cdac.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.beans.Person;
import com.cdac.dao.IPersonDao;

@Service
public class PersonServiceImpl implements IPersonService {

	@Autowired
	private IPersonDao iPersonDao;
	
	@Override
	public int addNewPersonInformation(Person person) {
		return iPersonDao.addNewPersonInformation(person);
	}

	@Override
	public List<Person> viewAllPersonInformation() {
		return iPersonDao.viewAllPersonInformation();
	}

	@Override
	public int deletePersonInformation(int id) {
		
		return 0;
	}

}
