package com.team.repository;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.Future;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.scheduling.annotation.Async;

import com.team.domain.Order;

public interface OrderRepository extends CrudRepository<Order, Integer> {
	List<Order> findTop10ById(int id);

	List<Order> findAllByIdUser(int id);
	Page<Order> findAllByIdUser(int id, Pageable pageable);
}