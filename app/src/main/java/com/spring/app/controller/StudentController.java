package com.spring.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.app.entity.Student;
import com.spring.app.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService service;
	
	@GetMapping("/")
	public String getHome(Model m) {
		m.addAttribute("list", service.getStudentList());
		return "Home";
	}
	
	@GetMapping("/student-form")
	public String getStudentForm() {
		
		return "Student-Form";
	}
	
	@PostMapping("/home")
	public String AddStudent(Model m,@ModelAttribute("student") Student std) {
		System.out.println("sada"+std);
		service.insertStudent(std);
		return "redirect:/";
	}
	
	@GetMapping("/updateStudent")
	public String updateStudent(Model m,@RequestParam Integer id) {
		Student s = service.getStudentById(id);
		s.setId(id);
		m.addAttribute("student", s);
		return "Update-Form";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam Integer id) {
		service.deleteStudent(id);
		return "redirect:/";
	}
	
	@GetMapping("/getPage")
	public String getPage(Model m) {
		Page<Student> pg = service.findPage();
		List<Student> ls = pg.getContent();
		m.addAttribute("data", ls);
		System.out.println("content of list : "+ls);
		return "redirect:/";
	}
	
	
}
