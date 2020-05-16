package com.skilldistillery.patients.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.patients.entities.Patient;

@Service
@Transactional
public class PatientDAOImpl implements PatientDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Patient findById(int id) {
		return em.find(Patient.class, id);
	}
	
	@Override
	public List<Patient> findAll(){
		String jpql ="SELECT p FROM Patient p";
		
		List<Patient> patients = em.createQuery(jpql, Patient.class).getResultList();
		return patients;
	}
	
	
	@Override
	public Patient addPatient(Patient patient) {
		em.persist(patient);
		return patient;
	}
	
	@Override
	public List<Patient> listOfPatientByLastName(String lastName){
		return em.createQuery("SELECT p FROM Patient p WHERE p.lastName= :lastName", Patient.class)
				.setParameter("lastName", lastName)
				.getResultList();
	}
	
	@Override
	public List<Patient> listOfAllPatients(){
		return em.createQuery("SELECT p FROM Patient p", Patient.class).getResultList();
	}

	@Override
	public Patient updatePatientInfo(Patient patient) {
		Patient updatePatientDetails = em.find(Patient.class, patient.getId());
		
		System.out.println(updatePatientDetails+ " update: line 56");//debugging print line
		updatePatientDetails.setDocLastName(patient.getDocLastName());
		
		updatePatientDetails.setEmail(patient.getEmail());
		
		updatePatientDetails.setLastName(patient.getLastName());
		updatePatientDetails.setFirstName(patient.getFirstName());
		
		updatePatientDetails.setdocSpecialty(patient.getdocSpecialty());
		
		return updatePatientDetails;
	}

	///////DELETE METHOD////////
	@Override
	public boolean appointmentComplete(int id) {
		Patient patient = em.find(Patient.class, id);
		em.remove(patient);
		return (em.find(Patient.class, id) == null);
	}
	
}
