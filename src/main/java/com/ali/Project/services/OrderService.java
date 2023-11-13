package com.ali.Project.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.ali.Project.models.Order;
import com.ali.Project.models.User;
import com.ali.Project.repositories.OrderRepository;

import jakarta.validation.Valid;

@Service
public class OrderService {
	
	@Autowired
	private OrderRepository ordeRepo;
	
	public List<Order> allOrders(){
		return ordeRepo.findAll();
	}
	
	public Order updateOrder(Order order) {
		return ordeRepo.save(order);
	}

	
	public List<Order> getInOrders(User user){
		return ordeRepo.findAllByUserord(user);
	}
	
	
	public Order addOrder(Order order) {
		return ordeRepo.save(order);
	}
	
	public void deleteOrder(Order order) {
		ordeRepo.delete(order);
	}
	
	public Order  findById(Long id){
		return ordeRepo.findByIdIs(id);
	}
	
	
	

	 public Map<String, String> getSizeList() {
	      Map<String, String> sizeList = new HashMap<String, String>();
	      sizeList.put("Large", "Large");
	      sizeList.put("Medium", "Medium");
	      sizeList.put("Small", "Small");
	      return sizeList;
	   }
	 
	 public Map<String, Double> getSizePrice() {
	      Map<String, Double> sizePrice = new HashMap<String, Double>();
	      sizePrice.put("Large", 2.0);
	      sizePrice.put("Medium", 3.0);
	      sizePrice.put("Small", 2.1);
	      return sizePrice;
	   }
	 
	 public Map<String, String> getMethodList() {
	      Map<String, String> methodPrice = new HashMap<String, String>();
	      methodPrice.put("Carry Out", "Carry Out");
	      methodPrice.put("Carry In", "Carry In");
	      methodPrice.put("Delivery", "Delivery");
	      return methodPrice;
	   }
	 
	 public Map<String, Double> getMethodPrice() {
	      Map<String, Double> methodPrice = new HashMap<String, Double>();
	      methodPrice.put("Carry Out", 2.00);
	      methodPrice.put("Carry In", 3.0);
	      methodPrice.put("Delivery", 2.5);
	      return methodPrice;
	   }
	 
	 public Map<String, Integer> getQuantityList() {
	      Map<String, Integer> quantityList = new HashMap<String, Integer>();
	      quantityList.put("1", 1);
	      quantityList.put("2", 2);
	      quantityList.put("3", 3);
	      return quantityList;
	   }
	 
	 public Map<String, String> getCrustList() {
	      Map<String, String> crustList = new HashMap<String, String>();
	      crustList.put("Thin Crust","Thin Crust");
	      crustList.put("Cheese Crust ", "Cheese Crust ");
	      crustList.put("Thick Crust ", "Thick Crust " );
	      crustList.put("Flat Bread ","Flat Bread ");
	      crustList.put("Stuffed Crust", "Stuffed Crust");
	      return crustList;
	   }
	 
	 public Map<String, Double> getCrustPrice() {
	      Map<String, Double> crustPrice = new HashMap<String, Double>();
	      crustPrice.put("Thin Crust",3.0);
	      crustPrice.put("Cheese Crust ", 2.5);
	      crustPrice.put("Thick Crust ", 1.5);
	      crustPrice.put("Flat Bread ",0.6);
	      crustPrice.put("Stuffed Crust", 1.9);
	      return crustPrice;
	   }
	 
	
	 public Map<String, String> getToppingList() {
	      Map<String, String> toppingList = new HashMap<String, String>();
	      toppingList.put("Mushroom", "Mushroom");
	      toppingList.put("Sausage ", "Sausage ");
	      toppingList.put("Green pepper ", "Green pepper ");
	      toppingList.put("Onion ", "Onion ");
	      toppingList.put("Black olives ", "Black olives ");
	      toppingList.put("Fresh garlic ", "Fresh garlic ");
	     
	      return toppingList;
	   }
	 
	 public Map<String, Double> getToppingPrice() {
	      Map<String, Double> toppingPrice = new HashMap<String, Double>();
	      toppingPrice.put("Mushroom", 2.4);
	      toppingPrice.put("Sausage ", 1.4);
	      toppingPrice.put("Green pepper ", 0.7);
	      toppingPrice.put("Onion ", 2.3);
	      toppingPrice.put("Black olives ", 1.3);
	      toppingPrice.put("Fresh garlic ", 2.0);
	     
	      return toppingPrice;
	   }
	

	
	

}
