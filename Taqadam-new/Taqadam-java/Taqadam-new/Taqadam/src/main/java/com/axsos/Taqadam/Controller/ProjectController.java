package com.axsos.Taqadam.Controller;

import java.security.Principal;

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
public class ProjectController {
	
	private ProjectService projectService;
	private UserService userService;
	public ProjectController(ProjectService projectService, UserService userService) {
		
		this.projectService = projectService;
		this.userService = userService;
	}
	
//	render create project page 
	@RequestMapping("/createProject")
	public String createProject(@ModelAttribute("project") Project project ) {
		return "createProject.jsp";
	}
	
//	create a project (action)
	@PostMapping("/create/project")
	public String createProject(Principal principal,Model model ,@Valid @ModelAttribute("project") Project project , BindingResult result,HttpSession session) {
		if(result.hasErrors()) {
			return "createProject.jsp";
		}
		
		String username = principal.getName();
        User user=  userService.findByUsername(username);
		User user1 = userService.findByUserId(user.getId());
		 project.setUser(user1);
		 projectService.createProject(project);
		
		
		return "redirect:/home/student";
}
//	render edit page
	@RequestMapping("/edit/project/{id}")
	public String editProject(@PathVariable("id") Long id, Model model) {
		Project projects = projectService.findProject(id);
        model.addAttribute("projects", projects);
		return "editProject.jsp";
	}
	
	@RequestMapping(value ="/editProject/{id}" , method = RequestMethod.PUT)
	public String updateStudent(@PathVariable("id") Long id,@Valid @ModelAttribute("projects") Project project , BindingResult result) {
		
		if (result.hasErrors()) {
			return "editProject.jsp";
		}
		else {
			
			projectService.updateProject(project, id);
			return "redirect:/home/student";
		}
	}

	
	

}
