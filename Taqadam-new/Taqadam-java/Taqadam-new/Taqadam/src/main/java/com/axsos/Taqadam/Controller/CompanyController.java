package com.axsos.Taqadam.Controller;

import java.security.Principal;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.axsos.Taqadam.Models.Role;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Service.UserService;

@Controller
public class CompanyController {
	
private UserService userService;
    

    
	public CompanyController(UserService userService) {
	super();
	this.userService = userService;
}



	@RequestMapping("/home/company")
    public String homestudent(Principal principal, Model model) {
    	 String username = principal.getName();
         User user=  userService.findByUsername(username);
         model.addAttribute("user", user);
         return "homecompany.jsp";
    }
	
	@RequestMapping("/edit/company/{id}")
	public String editCompany(@PathVariable("id") Long id, Model model,@Valid @ModelAttribute("user") User user) {
		User company = userService.findByUserId(id);
        model.addAttribute("company", company);
		return "editcompany.jsp";
	}
	
	@RequestMapping(value ="/edit/{id}" , method = RequestMethod.PUT)
	public String updateCompany(@PathVariable("id") Long id,@Valid @ModelAttribute("user") User user , BindingResult result) {
		
		if (result.hasErrors()) {
			return "editcompany.jsp";
		}
		else {
			
			userService.updateCompany(user, id);
			return "redirect:/home/company";
		}
	

}
}