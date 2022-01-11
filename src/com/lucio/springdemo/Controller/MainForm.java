package com.lucio.springdemo.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainForm {

	@RequestMapping("/showForm")
	public String showPage() {
		return "mainForm";
	}

	@RequestMapping("/processForm")
	public String processForms() {
		return "processForm";
	}

	@RequestMapping("/processData")
	public String processData(HttpServletRequest request, Model model) {

		// read request form
		String name = request.getParameter("studentName");

		// convert the data to uppercase and return
		String result = name.toUpperCase();

		// model
		model.addAttribute("result", result);

		return "processData";
	}

	@RequestMapping("/processDataThree")
	public String processDataThree(@RequestParam("studentName") String name, Model model) {

		// convert the data to uppercase and return
		String result = name.toUpperCase();

		// model
		model.addAttribute("result", result);

		return "processData";
	}

}
