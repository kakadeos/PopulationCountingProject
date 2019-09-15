package com.cdac.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.cdac.beans.Person;

@Repository
public class PersonDaoImpl implements IPersonDao {

	JdbcTemplate template;    

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}    

	@Override
	public int addNewPersonInformation(Person person) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Person> viewAllPersonInformation() {
		return template.query("select * from Person",new RowMapper<Person>(){    
	        public Person mapRow(ResultSet rs, int row) throws SQLException {    
	            Person person = new Person();
	            person.setId(rs.getInt(0));
	            person.setFirstName(rs.getString(1));
	            person.setLastName(rs.getString(2));
	            person.setPhoneNumber(rs.getString(3));
	            person.setGender(rs.getString(4));
	            person.setAadharCardNumber(rs.getString(5));
	            return person;
	        }    
	    });    
	}

	@Override
	public int deletePersonInformation(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
