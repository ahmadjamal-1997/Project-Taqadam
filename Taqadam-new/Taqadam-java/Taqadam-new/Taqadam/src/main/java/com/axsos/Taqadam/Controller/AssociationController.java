package com.axsos.Taqadam.Controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Service.UserService;

@Controller
public class AssociationController {
private UserService userService;
    
    public AssociationController(UserService userService) {
        this.userService = userService;
    }
	@RequestMapping("/home/association")
    public String homestudent(Principal principal, Model model) {
    	 String username = principal.getName();
         User user=  userService.findByUsername(username);
         model.addAttribute("user", user);
         return "homeassociation.jsp";
    }
	
//	as company
	@RequestMapping("/edit/association/{id}")
	public String editAssociation(@PathVariable("id") Long id, Model model){
		User association = userService.findByUserId(id);
        model.addAttribute("association", association);
		return "editassociation.jsp";
	}
	
	@RequestMapping(value ="/edit/association/{id}" , method = RequestMethod.PUT)
	public String updateAssociation(@PathVariable("id") Long id,@Valid @ModelAttribute("association") User user , BindingResult result) {
		
		if (result.hasErrors()) {
			return "editassociation.jsp";
		}
		else {
			
			userService.updateCompany(user, id);
			return "redirect:/home/association";
		}
	

}

}
