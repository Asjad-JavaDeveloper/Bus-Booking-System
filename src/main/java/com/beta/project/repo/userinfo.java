package com.beta.project.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.beta.project.model.user;

@Repository
public interface userinfo extends JpaRepository<user, Integer> {
	
	public user findByEmail(String email);

}
