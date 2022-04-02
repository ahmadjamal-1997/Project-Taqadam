package com.axsos.Taqadam.Controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.axsos.Taqadam.Models.Project;
import com.axsos.Taqadam.Models.Role;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Service.ProjectService;
import com.axsos.Taqadam.Service.UserService;

@Controller
public class UserController {
	
	private UserService userService;
	private ProjectService projectService;
   
	
	public UserController(UserService userService, ProjectService projectService) {
		super();
		this.userService = userService;
		this.projectService = projectService;
	}

	@GetMapping("/registration/student")
	public String registerStudent(@Valid @ModelAttribute("user") User user) {
        return "registrationstudent.jsp";
    }
	
	@GetMapping("/registration/company")
	public String registerCompany(@Valid @ModelAttribute("user") User user) {
        return "registrationcompany.jsp";
    }
    
	@GetMapping("/registration/association")
	public String registerAssociation(@Valid @ModelAttribute("user") User user) {
        return "registrationassociation.jsp";
    }
    
	@PostMapping("/registration/student")
    public String registrationStudentForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
        if (result.hasErrors()) {
            return "registrationstudent.jsp";
        }
        userService.saveWithStudentRole(user);
        return "redirect:/login";
    }
    
	@PostMapping("/registration/company")
    public String registrationCompanyForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
        if (result.hasErrors()) {
            return "registrationcompany.jsp";
        }
        userService.saveWithCompanyRole(user);
        return "redirect:/login";
    }
	
	@PostMapping("/registration/association")
    public String registrationAssociationForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
        if (result.hasErrors()) {
            return "registrationassociation.jsp";
        }
        userService.saveWithAssociationRole(user);
        return "redirect:/login";
    }
   
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "login.jsp";
    }
    @RequestMapping(value = {"/", "/main"})
    public String home(Principal principal, Model model) {
        String username = principal.getName();
       User user=  userService.findByUsername(username);
       Role role = userService.findByUser(user.getId());
       List<Project> projects=projectService.allProjects();
       List<Project> topProjects=projectService.findTop();
       model.addAttribute("user", user);
       model.addAttribute("role", role);
       model.addAttribute("projects", projects);
       model.addAttribute("topProjects", topProjects);
       return "main.jsp";
    } 
    
}

