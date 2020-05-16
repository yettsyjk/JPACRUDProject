package com.skilldistillery.patients.data;

import java.util.List;

import com.skilldistillery.patients.entities.Patient;



public interface PatientDAO {

	
	Patient findById(int id);
	
	List<Patient> findAll();
	
	Patient addPatient(Patient patient);
	
	List<Patient> listOfPatientByLastName(String lastName);
	
	List<Patient> listOfAllPatients();
}
