package com.skilldistillery.patients.controllers;

import java.util.List;

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

	@RequestMapping(path = { "/", "index.do" })
	public String index() {
		return "index";
	}

	@RequestMapping(path= "error.do")
	public String errorPage(@RequestParam("error") Model model) {
		model.addAttribute("oops", "Check Patient Id Entry");
		return "patient/error";
	}

	@RequestMapping(path = "getPatient.do", method = RequestMethod.GET) // should pid be String instead of Integer..need
																		// clarification
	public String findPatientDetails(@RequestParam("pid") String pid, Model model) {
		if (pid.isEmpty()) {
			return "patient/error";
		} else {
			Integer id;
			try {
				id = Integer.parseInt(pid);
			} catch (NumberFormatException e) {
				return "index";
			}

			Patient patient = dao.findById(id);

			model.addAttribute("patient", patient);
			return "patient/show";
		}
	}

	@RequestMapping(path = "newPatient.do", method = RequestMethod.GET)
	public String addPatient() {
		return "patient/newPatient";
	}

	@RequestMapping(path = "newPatient.do", method = RequestMethod.POST)
	public String addNewPatient(Patient patient, Model model) {
		Patient newPatient = dao.addPatient(patient);
		model.addAttribute("patient", newPatient);

		return "patient/show";
	}

	@RequestMapping(path = "getPatientByLastName.do", method = RequestMethod.GET)
	public String showPatientByLastName(Model model, String lastName) {
		if (lastName.isEmpty()) {
			return "index";
		} else {
			List<Patient> patients = dao.listOfPatientByLastName(lastName);
			model.addAttribute("patients", patients);
			return "patient/show";
		}
	}

	@RequestMapping(path = "listPatients.do", method = RequestMethod.GET)
	public String listOfPatients(Model model) {
		List<Patient> patients = dao.listOfAllPatients();

		model.addAttribute("patients", patients);
		return "patient/show";
	}
	
	@RequestMapping(path = "listDoctors.do", method = RequestMethod.GET)
	public String listOfDoctors(Model model) {
		List<Patient> patients = dao.listOfAllPatients();

		model.addAttribute("patients", patients);
		return "patient/showDoctor";
	}

//////UPDATE/////
	@RequestMapping(path = "updatePatient.do", method = RequestMethod.POST)
	public String updatePatient(Model model, Patient patient) {
		Patient updatedPatient = dao.updatePatientInfo(patient);
		model.addAttribute("patient", updatedPatient);

		return "patient/show";
	}

//////DELETE/////
	@RequestMapping(path = "deletePatient.do", method = RequestMethod.POST)
	public String appointmentComplete(Model model, int id) {
		if (dao.appointmentComplete(id)) {
			model.addAttribute("appointmentComplete", "Successful delete");
			return "patient/appointmentComplete";
		} else {
			model.addAttribute("patient", dao.findById(id));
			return "patient/show";
		}
	}
}
