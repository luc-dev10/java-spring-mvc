package com.lucio.springdemo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lucio.springdemo.Model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("showForm")
	public String showForm(Model model) {

		// create student
		Student student = new Student();

		// add student object to the model
		model.addAttribute("student", student);

		return "student-form";
	}

	@RequestMapping("processForm")
	public String processForm(@ModelAttribute("student") Student student) {

		String firstName = student.getFirstName();
		String lastName = student.getLastName();

		// add student object to the model
		System.out.println(firstName);
		System.out.println(lastName);

		return "student-confirmation";
	}
}
