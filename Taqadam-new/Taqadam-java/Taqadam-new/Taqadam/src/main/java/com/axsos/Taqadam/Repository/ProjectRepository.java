package com.axsos.Taqadam.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.Taqadam.Models.Project;
import java.util.List;
import java.util.Optional;

@Repository
public interface ProjectRepository extends CrudRepository<Project, Long> {
	List<Project> findAll();
	@Query(value="SELECT * FROM projects where user_id=?1", nativeQuery=true)
    List<Project> allPrjectsforThisUserById(Long id);
	Optional<Project> findById(Long id);

}
