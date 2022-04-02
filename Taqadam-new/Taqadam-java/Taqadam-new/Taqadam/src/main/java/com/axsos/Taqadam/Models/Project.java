package com.axsos.Taqadam.Models;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="projects")
public class Project {
	
	
		 	@Id
		    @GeneratedValue(strategy = GenerationType.IDENTITY)
		    private Long id;
		    
		    @NotEmpty(message="title name is required!")
		    @Size(min=3, max=30, message="title must be between 3 and 30 characters")
		    private String title;
		    
		    private int avg;
		    
		    @NotEmpty(message="field is required!")
		    private String field;
		    
		    @Size(min=3, max=30, message="description must be between 3 and 30 characters")
		    @NotEmpty(message="description is required!")
		    private String description;
		    
		    @Size(min=3, max=30, message="technique must be between 3 and 30 characters")
		    @NotEmpty(message="technique is required!")
		    private String tech;
		    
		    
		    @Column(updatable=false)
		    @DateTimeFormat(pattern="yyyy-MM-dd")
		    private Date createdAt;
		    @DateTimeFormat(pattern="yyyy-MM-dd")
		    private Date updatedAt;
		    
		    @ManyToMany(fetch = FetchType.EAGER)
		    @JoinTable(
		        name = "projects_users", 
		        joinColumns = @JoinColumn(name = "project_id"), 
		        inverseJoinColumns = @JoinColumn(name = "user_id"))
		    private List<User> users;

		    @ManyToOne(fetch = FetchType.LAZY)
		    @JoinColumn(name="user_id")
		    private User user;
		   

			public Project() {
				super();
			}
			
			public Project(
					@NotEmpty(message = "title name is required!") @Size(min = 3, max = 30, message = "title must be between 3 and 30 characters") String title,
					@NotEmpty(message = "field is required!") String field,
					@Size(min = 3, max = 30, message = "description must be between 3 and 30 characters") @NotEmpty(message = "description is required!") String description,
					@Size(min = 3, max = 30, message = "technique must be between 3 and 30 characters") @NotEmpty(message = "technique is required!") String tech,
					@NotEmpty(message = "file is required!") String file, User user) {
				super();
				this.title = title;
				this.field = field;
				this.description = description;
				this.tech = tech;
				this.user = user;
			}
			
			

			public Long getId() {
				return id;
			}


			public String getTitle() {
				return title;
			}

			public void setTitle(String title) {
				this.title = title;
			}

			public String getField() {
				return field;
			}

			public void setField(String field) {
				this.field = field;
			}

			public String getDescription() {
				return description;
			}

			public void setDescription(String description) {
				this.description = description;
			}

			public String getTech() {
				return tech;
			}

			public void setTech(String tech) {
				this.tech = tech;
			}


			public List<User> getUsers() {
				return users;
			}

			public void setUsers(List<User> users) {
				this.users = users;
			}

			public User getUser() {
				return user;
			}

			public void setUser(User user) {
				this.user = user;
			}

			@PrePersist
		    protected void onCreate(){
		        this.createdAt = new Date();
		    }
		    @PreUpdate
		    protected void onUpdate(){
		        this.updatedAt = new Date();
		    }

			public int getAvg() {
				return avg;
			}

			public void setAvg(int avg) {
				this.avg = avg;
			}
		    
		    
		    
		    
		    
}