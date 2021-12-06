package com.spring.app.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.spring.app.entity.Student;

public interface StudentService {

	public List<Student> getStudentList();
	
	public void insertStudent(Student s);
	
	public  Student getStudentById(Integer id);
	
	public void deleteStudent(Integer id);
	
	public Page<Student> findPage();
}
