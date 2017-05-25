package com.team.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	List<Product> findByNameContaining(String q);
	//tim 10 phan tu dau theo kieu
	List<Product> findTop10ByType(int id);
	List<Product> findTop8ByTypeOrderByViewDesc(int id);
	//List<Product> findTop8ByViewDesc();
	
	//tim cac object thoa man dieu kien cua price
	List<Product> findByPriceLessThanEqualAndPriceGreaterThan(int lessPrice, int greaterPrice);
}
