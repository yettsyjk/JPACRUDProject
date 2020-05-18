package com.skilldistillery.patients;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DoctorPatientCrmApplication extends SpringBootServletInitializer {


	@Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(DoctorPatientCrmApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(DoctorPatientCrmApplication.class, args);
	}

}
