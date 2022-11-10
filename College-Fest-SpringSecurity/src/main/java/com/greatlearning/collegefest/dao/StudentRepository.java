package com.greatlearning.collegefest.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greatlearning.collegefest.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

}
