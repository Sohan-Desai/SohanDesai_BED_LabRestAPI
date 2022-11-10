package com.greatlearning.collegefest.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.greatlearning.collegefest.model.Role;
import com.greatlearning.collegefest.model.User;

public class MyUserDetails implements UserDetails {

	private User user;

	public MyUserDetails(User user) {
		this.user = user;
	}

	/*
	 * creating a list of SimpleGrantedAuthority objects
	 * by passing it role names
	 */
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		List<Role> roles = user.getRoles();

		List<SimpleGrantedAuthority> grantAuth = new ArrayList<>();

		for (Role role : roles) {
			grantAuth.add(new SimpleGrantedAuthority(role.getName()));
		}

		return grantAuth;
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
	}

	//Other fields to be hardcoded
	
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
