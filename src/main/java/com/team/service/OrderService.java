package com.team.service;

import java.util.List;

import com.team.domain.Order;
import com.team.domain.Product;

public interface OrderService {

    Iterable<Order> findAll();

    Order findOne(int id);

    void save(Order order);

    void delete(int id);
    //Order findByEmail(String Email);

    List<Order> findByIduser(int id);
    
    List<Order> findTop10ById(int id);

}