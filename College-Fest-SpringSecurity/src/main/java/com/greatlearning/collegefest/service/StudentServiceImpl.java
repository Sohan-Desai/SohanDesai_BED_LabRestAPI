package com.greatlearning.collegefest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.collegefest.dao.StudentRepository;
import com.greatlearning.collegefest.model.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public List<Student> findAll() {
		return studentRepository.findAll();
	}

	@Override
	public Student findById(long id) {
		return studentRepository.findById(id).get();
	}

	@Override
	public void saveStudent(Student theStudent) {
		studentRepository.save(theStudent);
	}

	@Override
	public void deleteById(long theId) {
		studentRepository.deleteById(theId);
	}

}
