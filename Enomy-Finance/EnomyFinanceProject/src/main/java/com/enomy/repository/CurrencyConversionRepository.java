package com.enomy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enomy.model.CurrencyConversion;

@Repository
public interface CurrencyConversionRepository extends JpaRepository<CurrencyConversion, Long> {
	
}
