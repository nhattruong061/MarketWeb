package com.team.service;

import java.util.List;

import com.team.domain.User;

public interface UserService {

    Iterable<User> findAll();

    List<User> search(String q);

    User findOne(int id);

    void save(User contact);

    void delete(int id);
    User findByEmail(String Email);

}