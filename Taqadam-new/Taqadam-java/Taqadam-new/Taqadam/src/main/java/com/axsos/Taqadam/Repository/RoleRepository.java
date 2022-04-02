package com.axsos.Taqadam.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.Taqadam.Models.Role;
import com.axsos.Taqadam.Models.User;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
	List<Role> findAll();
    
    List<Role> findByName(String name);
    Role 		findByUsersContains(User user);
}
