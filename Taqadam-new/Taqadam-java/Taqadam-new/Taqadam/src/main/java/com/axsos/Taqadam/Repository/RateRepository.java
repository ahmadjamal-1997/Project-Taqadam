package com.axsos.Taqadam.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.axsos.Taqadam.Models.Rate;

public interface RateRepository extends CrudRepository<Rate,Long> {
	List<Rate> findAllByProjectId(Long id); 
	List<Rate> findAllByUserId(Long id);
}
