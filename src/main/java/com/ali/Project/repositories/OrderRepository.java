package com.ali.Project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ali.Project.models.Order;
import com.ali.Project.models.User;
@Repository
public interface OrderRepository extends CrudRepository<Order, Long>{
	
	Order findByIdIs(Long id);
	List<Order> findAllByUserord(User user);
	List<Order> findAll();
	
	
	

}
