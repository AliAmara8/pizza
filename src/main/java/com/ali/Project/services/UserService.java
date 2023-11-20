package com.ali.Project.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.ali.Project.models.LoginUser;
import com.ali.Project.models.User;
import com.ali.Project.repositories.UserRepository;


@Service

public class UserService {
	
	@Autowired
	private UserRepository useRepo;
	
	public User register(User newUser, BindingResult result) {
		
		Optional<User> userEnrgstr=useRepo.findByEmail(newUser.getEmail());
		if(userEnrgstr.isPresent()) {
			result.rejectValue("Email", "unique","Account with this email already exists.");
		}
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("password", "match","Password and Confirm not match.");
		}
		if(result.hasErrors()) {
		
		return null;
		}
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
    	newUser.setPassword(hashed);
    	
    	 newUser=useRepo.save(newUser);
		return newUser;
		
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
		
		Optional<User>userlog=useRepo.findByEmail(newLogin.getEmail());
		if(!userlog.isPresent()) {
			result.rejectValue("Email", "MissingAccount", "You need to register");
			return null;
		}
		User user=userlog.get();
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "Matches", "Invalid Password!");
		}
		if(result.hasErrors()) {
    		return null;
    	}
    	return user;
    	}
	
	public List<User> allUsers(){
		return useRepo.findAll();
	}
	public void updateUser(User user) {
		 useRepo.save(user);
	}
	
	  public User updatePartUser(Long id,String firstName,String lastName,String
	  city,String address,String states) { 
		  User user=useRepo.findByIdIs(id);
	  user.setFirstName(firstName);
	  user.setLastName(lastName);
	  user.setCity(city);
	  user.setAddress(address);
	  user.setStates(states);
	  
	 return useRepo.save(user); }
	 
	
    	public User findByEmail(String email) {
    		
    		Optional<User> result = useRepo.findByEmail(email);
    		if(result.isPresent()) {
    			return result.get();
    		}
    		
    		return null;
    	}
    	
    	public User findById(Long id) {
    		
    		Optional<User> result = useRepo.findById(id);
    		if(result.isPresent()) {
    			return result.get();
    		}
    		
    		return null;
	}
    	 public Map<String, String> getStatesList() {
   	      Map<String, String> statesList = new HashMap<String, String>();
   	      statesList.put("Tunis", "Tunis");
   	      statesList.put("Mannouba", "Mannouba");
   	      statesList.put("Ariana", "Ariana");
   	      statesList.put("Nabeul", "Nabeul");
   	      return statesList;
   	   }

	

}
