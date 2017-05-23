package com.team.service;

import java.util.List;

import com.team.domain.Sale;

public interface SaleService {

	 	Iterable<Sale> findAll();

	    List<Sale> search(int id);

	    Sale findOne(int id);
	    
	    Sale findByIdproduct(int id);

	    void save(Sale sale);

	    void delete(int id);
}
