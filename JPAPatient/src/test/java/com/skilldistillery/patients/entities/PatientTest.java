package com.skilldistillery.patients.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PatientTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Patient patient;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PatientPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		patient = em.find(Patient.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		patient = null;
		em.close();
	}

	@Test
	@DisplayName("mapping for Patient")
	void test1() {
		assertNotNull(patient);
		assertEquals("Laura", patient.getFirstName());
		assertEquals("Croft", patient.getLastName());
		assertEquals("lcroft@gmail.com", patient.getEmail());
		
		assertEquals("Spacemen", patient.getDocLastName());
		assertEquals("Surgery", patient.getdocSpecialty());
		
	}
	
	@Test
	@DisplayName("Date Testing")
	void test2() {
		assertNotNull(patient);
		//2020-05-16 20:05:10
				assertEquals("2020-05-16 20:05:10", patient.getDateCreated());
				assertEquals("2020-05-17 20:05:10", patient.getLastUpdated());
	}

}
//+----+------------+-----------+---------------------+---------------------+---------------------+---------------------+---------------------+
//| id | first_name | last_name | email               | physician_last_name | physician_specialty | created_at          | last_updated        |
//+----+------------+-----------+---------------------+---------------------+---------------------+---------------------+---------------------+
//|  1 | Laura      | Croft     | lcroft@gmail.com    | Spacemen            | Surgery             | 2020-05-16 20:05:10 | 2020-05-17 20:05:10 |