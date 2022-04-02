package com.axsos.Taqadam.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.axsos.Taqadam.Models.Project;
import com.axsos.Taqadam.Models.Rate;
import com.axsos.Taqadam.Models.Role;
import com.axsos.Taqadam.Models.User;
import com.axsos.Taqadam.Repository.ProjectRepository;
import com.axsos.Taqadam.Repository.RateRepository;
import com.axsos.Taqadam.Repository.RoleRepository;
import com.axsos.Taqadam.Repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private ProjectRepository projectRepo;
    private RateRepository rateRepo;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
   
    
    
   

	public UserService(UserRepository userRepository, ProjectRepository projectRepo, RateRepository rateRepo,
			RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
		super();
		this.userRepository = userRepository;
		this.projectRepo = projectRepo;
		this.rateRepo = rateRepo;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	// 1
    public void saveWithStudentRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_STUDENT"));
        userRepository.save(user);
    }
     
    public void saveWithCompanyRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_COMPANY"));
        userRepository.save(user);
    }
    public void saveWithAssociationRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ASSOCIATION"));
        userRepository.save(user);
    }
     // 2 
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }    
    
    // 3
    public User findByUsername(String email) {
        return userRepository.findByEmail(email);
    }
    public Role findByUser(Long id) {
         Optional<User> userin= userRepository.findById(id);
         if(userin.isPresent()) {
        	 User user =userin.get();
        	Role role=roleRepository.findByUsersContains(user);
        	return role;
         }
         else {return null;}
    }
    
//    edit information for company :
    public void updateCompany(User user , Long id) {
    	User editCompany = userRepository.findById(id).orElse(null);
      	assert editCompany !=null;
      	editCompany.setUserName(user.getUserName());
      	editCompany.setPhone(user.getPhone());
      	editCompany.setLocation(user.getLocation());
      	editCompany.setField(user.getField());
      	editCompany.setBio(user.getBio());
      	userRepository.save(editCompany);
      	
      }
//    edit student information
  public void updateStudent(User user , Long id) {
  	User editStudent = userRepository.findById(id).orElse(null);
    	assert editStudent !=null;
    	editStudent.setFirstName(user.getFirstName());
    	editStudent.setLastName(user.getLastName());
    	editStudent.setUniversity(user.getUniversity());
    	editStudent.setPhone(user.getPhone());
    	editStudent.setField(user.getField());
    	editStudent.setBio(user.getBio());
    	userRepository.save(editStudent);
    	
    }
    
    public User findByUserId(Long id) {
    	Optional<User> userin = userRepository.findById(id);
    	if(userin.isPresent()) {
       	 User user =userin.get();
       
       	return user;
        }
        else {return null;
    }
    

    }
    public Project findByProjectId(Long id) {
    	Optional<Project> projectin = projectRepo.findById(id);
    	if(projectin.isPresent()) {
       	 Project project =projectin.get();
       
       	return project;
        }
        else {return null;}
    }
    public List<Rate> allRatesForProject(Long id){
    	return rateRepo.findAllByProjectId(id);
    }
    public Rate createRate(Rate rate) {
    	return rateRepo.save(rate);
    }
    public void favoriteProject(User user) {
    	userRepository.save(user);
    }
}
