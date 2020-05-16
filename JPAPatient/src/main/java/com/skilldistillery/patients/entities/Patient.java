package com.skilldistillery.patients.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient")
public class Patient {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	
	@Column(name="last_name")
	private String lastName;
	
	
	@Column(name="email")
	private String email;
	
	@Column(name="physician_last_name")
	private String docLastName;
	
	
	@Column(name="physician_specialty")
	private String docSpecialty;


	
	
	/////
	
	public Patient() {
	//no-arg constructor
	}
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getDocLastName() {
		return docLastName;
	}


	public void setDocLastName(String docLastName) {
		this.docLastName = docLastName;
	}


	public String getdocSpecialty() {
		return docSpecialty;
	}


	public void setdocSpecialty(String docSpecialty) {
		this.docSpecialty = docSpecialty;
	}


	@Override
	public String toString() {
		return "Patient [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", docLastName=" + docLastName + ", docSpecialty=" + docSpecialty + "]";
	}
	
	
}
