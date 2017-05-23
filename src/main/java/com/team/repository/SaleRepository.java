package com.team.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.team.domain.Sale;

public interface SaleRepository extends CrudRepository<Sale, Integer>{

	 List<Sale> findById(int id);
	 Sale findByIdproduct(int id);
}
