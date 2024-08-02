package com.beta.project.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.beta.project.model.addm;

import antlr.collections.List;

public interface Admininfo extends JpaRepository<addm, Integer> {
	public addm findById(int id);
	 @Query("SELECT p FROM addm p WHERE p.city LIKE %:city% AND p.category LIKE %:category%")
	    List findByCityAndCategory( @Param("city") String city, @Param("category") String category);
}
