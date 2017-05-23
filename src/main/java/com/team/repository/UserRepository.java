package com.team.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.team.domain.User;

public interface UserRepository extends CrudRepository<User, Integer> {

    List<User> findByNameContaining(String q);

	User findByEmail(String string);

}