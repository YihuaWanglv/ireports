
package com.carisok.ireports.service.remote;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import com.carisok.ireports.model.User;



public interface UserRemote {

//	public UserDTO findUserById(Long id);
//	public UserDTO createUser(UserDTO user) throws NoSuchAlgorithmException, InvalidKeySpecException;
//	public void deleteUser(Long id); 
//	public UserDTO findUserByName(String username);
//	public UserDTO updateUser(UserDTO user, Boolean isUpdateSelected) throws NoSuchAlgorithmException, InvalidKeySpecException;
	
	public User findUserById(Long id);
	public User createUser(User user) throws NoSuchAlgorithmException, InvalidKeySpecException;
	public void deleteUser(Long id); 
	public User findUserByName(String username);
	public User updateUser(User user, Boolean isUpdateSelected) throws NoSuchAlgorithmException, InvalidKeySpecException;
	

}
