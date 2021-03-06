package com.axsos.Taqadam.Controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.axsos.Taqadam.Models.Project;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Service.ProjectService;
import com.axsos.Taqadam.Service.UserService;

@Controller
public class StudentController {
private UserService userService;
private ProjectService projectService;



	public StudentController(UserService userService, ProjectService projectService) {
	super();
	this.userService = userService;
	this.projectService = projectService;
}

	@RequestMapping("/home/student")
    public String homestudent(Principal principal, Model model) {
    	 String username = principal.getName();
         User user=  userService.findByUsername(username);
         List<Project> allProjects = projectService.allProjectsforThisUser(user.getId());
         model.addAttribute("user", user);
         model.addAttribute("allProjects", allProjects);
         
         return "homestudent.jsp";
    }
	
	@RequestMapping("/edit/student/{id}")
	public String editStudent(@PathVariable("id") Long id, Model model) {
		User student = userService.findByUserId(id);
        model.addAttribute("student", student);
		return "editStudent.jsp";
	}
	
	@RequestMapping(value ="/edit/student/{id}", method = RequestMethod.PUT)
	public String updateStudent(@PathVariable("id") Long id,@Valid @ModelAttribute("student") User user , BindingResult result) {
		
		if (result.hasErrors()) {
			return "editStudent.jsp";
		}
		else {
			User student = userService.findByUserId(id);
			userService.updateStudent(user, student.getId());
			return "redirect:/home/student";
		}
	}
	

}
