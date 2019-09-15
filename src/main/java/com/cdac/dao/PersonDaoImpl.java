package com.cdac.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.cdac.beans.Person;

public class PersonDaoImpl implements IPersonDao {

	JdbcTemplate template;    

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}    

	@Override
	public int addNewPersonInformation(Person person) {
		String sql="insert into Person(firstName,lastName,phoneNumber,gender,aadharCardNumber) values('"+person.getFirstName()+"','"+person.getLastName()+"','"+person.getPhoneNumber()+"','"+person.getGender()+"','"+person.getAadharCardNumber()+"')";    
	    return template.update(sql); 
	}

	@Override
	public List<Person> viewAllPersonInformation() {
		return template.query("select * from Person",new RowMapper<Person>(){    
	        public Person mapRow(ResultSet rs, int row) throws SQLException {    
	            Person person = new Person();
	            person.setId(rs.getInt(1));
	            person.setFirstName(rs.getString(2));
	            person.setLastName(rs.getString(3));
	            person.setPhoneNumber(rs.getString(4));
	            person.setGender(rs.getString(5));
	            person.setAadharCardNumber(rs.getString(6));
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
