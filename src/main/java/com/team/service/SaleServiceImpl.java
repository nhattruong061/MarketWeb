package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.domain.Sale;
import com.team.repository.SaleRepository;

@Service
public class SaleServiceImpl implements SaleService{

	@Autowired
	private SaleRepository saleRepository;
	
	@Override
	public Iterable<Sale> findAll() {
		// TODO Auto-generated method stub
		return saleRepository.findAll();
	}

	@Override
	public List<Sale> search(int id) {
		// TODO Auto-generated method stub
		return saleRepository.findById(id);
	}

	@Override
	public Sale findOne(int id) {
		// TODO Auto-generated method stub
		return saleRepository.findOne(id);
	}

	@Override
	public void save(Sale sale) {
		// TODO Auto-generated method stub
		saleRepository.save(sale);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		saleRepository.delete(id);
	}

	@Override
	public Sale findByIdproduct(int id){
		// TODO Auto-generated method stub
		return saleRepository.findByIdproduct(id) ;
	}

}
