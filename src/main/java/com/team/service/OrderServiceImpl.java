package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team.domain.Order;
import com.team.repository.OrderRepository;

@Service
@Transactional

public class OrderServiceImpl implements OrderService {
	
	@Autowired
    private OrderRepository orderRepository;

    @Override
    public Iterable<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order findOne(int id) {
        return orderRepository.findOne(id);
    }

    @Override
    public void save(Order order) {
    	orderRepository.save(order);
    }
    
    public void AddOrder(Order order) {
    	orderRepository.save(order);
    }

    @Override
    public void delete(int id) {
    	orderRepository.delete(id);
    }

    @Override
    public List<Order> findAllByIdUser(int id) {
        return orderRepository.findAllByIdUser(id);
    }
    
    @Override
    public Page<Order> findAllByIdUser(int id,Pageable pageable) {
        return orderRepository.findAllByIdUser(id, pageable);
    }

    @Override
    public List<Order> findTop10ById(int id) {
        return orderRepository.findTop10ById(id);
    }
    
    
/*    @Override
    public User findByEmail(String Email){
		return orderRepository.findByEmail(Email);
	}*/

}