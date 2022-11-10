package com.greatlearning.collegefest.util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.greatlearning.collegefest.dao.StudentRepository;
import com.greatlearning.collegefest.dao.UserRepository;
import com.greatlearning.collegefest.model.Role;
import com.greatlearning.collegefest.model.Student;
import com.greatlearning.collegefest.model.User;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class BootstrapAppData {

	private final StudentRepository studentRepository;
	private final UserRepository userRepository;
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	/*
	 * Bootstrapping sample student, user and role records
	 * Encode password before saving
	 */
	
	@EventListener(ApplicationReadyEvent.class)
	public void insertUsers(ApplicationReadyEvent event) {
		
		List<Role> roles1 = new ArrayList<>();
		roles1.add(Role.builder().name("USER").build());

		List<Role> roles2 = new ArrayList<>();
		roles2.add(Role.builder().name("USER").build());
		roles2.add(Role.builder().name("ADMIN").build());
		
		User user1 = User.builder().username("USER").password(passwordEncoder().encode("USER"))
				.roles(roles1).build();
		this.userRepository.save(user1);

		User user2 = User.builder().username("ADMIN").password(passwordEncoder().encode("ADMIN"))
				.roles(roles2).build();
		this.userRepository.save(user2);
		
		Student student1 = new Student("Bhoopesh", "Agarwal", "IT", "India");
		Student student2 = new Student("Ankit", "Garg", "Mech", "USA");
		
		this.studentRepository.save(student1);
		this.studentRepository.save(student2);
	}
}
