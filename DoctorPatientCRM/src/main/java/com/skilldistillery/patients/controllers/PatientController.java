package com.skilldistillery.patients.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.patients.data.PatientDAO;
import com.skilldistillery.patients.entities.Patient;

@Controller
public class PatientController {

	
	@Autowired
	private PatientDAO dao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index() {
		return "index";
	}
	
	
	@RequestMapping(path= "error.do")
	public String errorPage() {
		return "error";
	}
	
	
	
	@RequestMapping(path="getPatient.do")
	public String findPatient(@RequestParam("pid") Integer pid, Model model) {
		Patient patient = dao.findById(pid);
		model.addAttribute("patient", patient);
		return "patient/show";
	}
	
	
	@RequestMapping(path="newPatient.do", method= RequestMethod.GET)
	public String addPatient() {
		return "patient/newPatient";
	}
	
	@RequestMapping(path="newPatient.do", method= RequestMethod.POST)
	public String addNewPatient(Patient patient, Model model) {
		Patient newPatient = dao.addPatient(patient);
		model.addAttribute("patient", newPatient);
		
		return "patient/show";
	}
	
	
	
	
	
}
