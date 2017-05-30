package com.team.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.team.domain.Order;
import com.team.domain.OrderCriteria;
import com.team.domain.Product;

public interface OrderService extends Serializable {

    Iterable<Order> findAll();

    Order findOne(int id);
    void save(Order order);
    void delete(int id);
    //Order findByEmail(String Email);

    List<Order> findAllByIdUser(int id);
    Page<Order> findAllByIdUser(int id, Pageable pageable);
    
    List<Order> findTop10ById(int id);

}