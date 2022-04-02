package com.axsos.Taqadam.Controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.axsos.Taqadam.Models.Project;
import com.axsos.Taqadam.Models.Rate;
import com.axsos.Taqadam.Models.Role;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Service.ProjectService;
import com.axsos.Taqadam.Service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProjectService projectService;
	
	@GetMapping("/user/{id}")
	public String main(@PathVariable("id")Long id,Principal principal) {
		String username = principal.getName();
	       User user=  userService.findByUsername(username);
	       Role role = userService.findByUser(user.getId());
		     
	          if(role.getId()==4) {
		        return "redirect:/home/student";
		        }
		       else if (role.getId()==1) {
		       return "redirect:/home/company";
		        }
		       else if(role.getId()==3) {
		    	   return "redirect:/home/association";
		       }
		       else if(role.getId()==2) {
		    	   return "redirect:/home/admin";
		       }
		       else {
		    	   return "login.jsp";
		       }
	}
	@GetMapping("/home")
	public String home() {
		return "home.jsp";
	}
	@GetMapping("/create/project")
	public String create(@ModelAttribute("project") Project project,BindingResult result) {
		return "createProject.jsp";
	}
	@GetMapping("/project/details/{id}")
	public String details(Principal principal,@PathVariable("id")Long id,Model model,HttpSession session ) {
		String username = principal.getName();
	     User user=  userService.findByUsername(username);
	     Role role = userService.findByUser(user.getId());
	     String name = role.getName();
	     Project project = userService.findByProjectId(id);
	     List<Rate> rates = userService.allRatesForProject(project.getId());
	     int sum = 0;
	     for(Rate rate :rates ) { 
	    	sum = sum +rate.getRate();	    	 
	     }
	     if(sum != 0) {
	     int avg = sum/rates.size();
	     project.setAvg(avg);
	     projectService.createProject(project);
	     model.addAttribute("avg", avg);}
	     List<Rate> comments = userService.allRatesForProject(project.getId());    
	     List<Rate> realComments = new ArrayList<Rate>();	     
	     for(Rate comment : comments) {
	    	 if (comment.getComment() != null) {
	    		 realComments.add(comment);	
	    	 }
	     }
	     int count=0;
	    List<Rate> favorits= userService.allRatesForProject(id);
	    for(Rate favorit : favorits) {
	    	 if (favorit.getFavorite() == 1 && favorit.getUser().getId()==user.getId()) {
	    		 	count+=1;
	    	 }
	     }
	    
	     model.addAttribute("count", count);
	     model.addAttribute("thisProject", project);
	     model.addAttribute("thisUser", user);
	     model.addAttribute("name", name);
	     model.addAttribute("comments", realComments);
	     
	     return "projectDetails.jsp";
	}
	@PostMapping("rate/{id}")
	public String rate(Principal principal,@PathVariable("id") Long id,@RequestParam("range")Integer rate) {
		 Project project = userService.findByProjectId(id);
		 String username = principal.getName();
	     User user=  userService.findByUsername(username);
		Rate thisRate = new Rate(); 
		thisRate.setRate(rate);
		thisRate.setProject(project);
		thisRate.setUser(user);
		userService.createRate(thisRate);
		return "redirect:/project/details/{id}";
	}
	
	@PostMapping("comment/{id}")
	public String comment(Principal principal,@PathVariable("id") Long id,@RequestParam("comment")String comment) {
		 Project project = userService.findByProjectId(id);
		 String username = principal.getName();
	     User user=  userService.findByUsername(username);
		Rate thisComment = new Rate(); 
		thisComment.setComment(comment);
		thisComment.setProject(project);
		thisComment.setUser(user);
		userService.createRate(thisComment);
		return "redirect:/project/details/{id}";
		 
	}
	@RequestMapping("/addtolist/{id}")
	public String favorite(Principal principal,@PathVariable("id") Long id) {
		Project project = userService.findByProjectId(id);
		 String username = principal.getName();
	     User user=  userService.findByUsername(username);
	     Rate add = new Rate();
	     add.setUser(user);
	     add.setProject(project);
	     add.setFavorite(1);
	     userService.createRate(add);
	     
	     return "redirect:/project/details/{id}";
	}
}
