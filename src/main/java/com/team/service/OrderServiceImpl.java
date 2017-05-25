package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.domain.Order;
import com.team.repository.OrderRepository;

@Service
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
    public List<Order> findTop10ById(int id) {
        return orderRepository.findTop10ById(id);
    }
    
    
/*    @Override
    public User findByEmail(String Email){
		return orderRepository.findByEmail(Email);
	}*/

}