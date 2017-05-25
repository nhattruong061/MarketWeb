package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.team.domain.Product;
import com.team.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
    public Iterable<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> search(String q) {
        return productRepository.findByNameContaining(q);
    }

    @Override
    public Product findOne(int id) {
        return productRepository.findOne(id);
    }

    @Override
    public void save(Product Product) {
        productRepository.save(Product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);
    }

	@Override
	public List<Product> findTop10ByType(int id) {
		// TODO Auto-generated method stub
		return  productRepository.findTop10ByType(id);
	}

	@Override
	public List<Product> findByPriceThan(int lessPrice, int greaterPrice) {
		return productRepository.findByPriceLessThanEqualAndPriceGreaterThan(lessPrice, greaterPrice);
	}

	@Override
	public List<Product> findTop8ByTypeOrderByViewDesc(int id) {
		return  productRepository.findTop8ByTypeOrderByViewDesc(id);
	}

/*	@Override
	public List<Product> findTop8ByViewDesc() {
		return productRepository.findTop8ByViewDesc();
	}*/
    
    /*@Override
    public Product findByID_a(int id){
    	return productRepository.findByID_a(id);
    }*/
}
