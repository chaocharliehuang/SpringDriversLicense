package com.chaocharliehuang.relationships.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chaocharliehuang.relationships.models.Person;
import com.chaocharliehuang.relationships.repositories.PersonRepository;

@Service
public class PersonService {
	
	private PersonRepository personRepository;
	
	public PersonService(PersonRepository personRepository) {
		this.personRepository = personRepository;
	}
	
	public List<Person> getAllPersons() {
		return (List<Person>) personRepository.findAll();
	}
	
	public void addPerson(Person person) {
		personRepository.save(person);
	}
	
	public Person findPersonById(Long id) {
		return personRepository.findOne(id);
	}
}
