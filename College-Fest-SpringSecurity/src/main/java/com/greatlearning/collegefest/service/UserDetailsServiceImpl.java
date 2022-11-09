package com.greatlearning.collegefest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.greatlearning.collegefest.model.User;
import com.greatlearning.collegefest.repository.UserRepository;
import com.greatlearning.collegefest.security.MyUserDetails;

public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = userRepository.findByUsername(username);

		if (user == null)
			throw new UsernameNotFoundException("Sorry!\nCould not find user");

		return new MyUserDetails(user);
	}

}
