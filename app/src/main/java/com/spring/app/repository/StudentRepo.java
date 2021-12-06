package com.spring.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.app.entity.Student;

@Repository
public interface StudentRepo extends JpaRepository<Student, Integer> {
	
}
