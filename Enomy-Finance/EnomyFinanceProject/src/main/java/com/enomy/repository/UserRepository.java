package com.enomy.repository;

import com.enomy.model.User;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	@Query("SELECT u FROM User u WHERE u.userId = :userId")
	Optional<User> findById(@Param("userId") Long userId);

	User findByemailAddress(String emailAddress);

	void deleteByUserId(Long userId);

	
}