package com.spring.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.spring.app.entity.Student;
import com.spring.app.repository.StudentRepo;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepo repo;

	@Override
	public List<Student> getStudentList() {
		return repo.findAll();
	}

	@Override
	public void insertStudent(Student s) {
		repo.save(s);
	}

	@Override
	public Student getStudentById(Integer id) {
		Optional<Student> op = repo.findById(id);
		Student st = op.get();
		return st;
	}

	@Override
	public void deleteStudent(Integer id) {
		repo.deleteById(id);
	}

	@Override
	public Page<Student> findPage() {
		PageRequest page = PageRequest.of(0, 3, Sort.by(Direction.DESC, "name"));
		Page<Student> p = repo.findAll(page);
		System.out.println("page object : "+p.toString());
		return p;
	}	

}
