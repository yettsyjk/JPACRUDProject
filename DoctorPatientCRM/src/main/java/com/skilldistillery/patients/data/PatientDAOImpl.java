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
	
}
