package com.axsos.Taqadam.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.axsos.Taqadam.Models.Project;

@Controller
public class HomeController {
	@GetMapping("/main")
	public String main() {
		return "main.jsp";
	}
	@GetMapping("/home")
	public String home() {
		return "home.jsp";
	}
	@GetMapping("/create/project")
	public String create(@ModelAttribute("project") Project project,BindingResult result) {
		return "createProject.jsp";
	}
	@GetMapping("/project/details")
	public String details() {
		return "projectDetails.jsp";
	}
}
