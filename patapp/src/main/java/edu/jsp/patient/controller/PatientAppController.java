package edu.jsp.patient.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.jsp.patient.model.dto.Patient;
import edu.jsp.patient.model.service.PatientService;

@Controller
public class PatientAppController {
	
	@Autowired
	private PatientService service;

	@RequestMapping("/savepatient")
	public String savePatient(@ModelAttribute Patient patient, Model model) {
		if (service.savePatient(patient) != null) {
			return "redirect:/getpatients";

		} else {
			return "/WEB-INF/views/error.jsp";
		}
	}

	@GetMapping("/getpatients")
	public String getAllPatients(Model model) {
		List<Patient> patients;
		if ((patients = service.getAllPatients()) != null) {
			model.addAttribute("list", patients);
			return "/WEB-INF/views/patients.jsp";
		} else {
			return "/WEB-INF/views/error.jsp";
		}

	}
	@GetMapping("/findpatient")
	public String findPatient(@RequestParam(name = "id") int id, Model model) {
		Patient patient = service.getPatientById(id);

		if (patient != null) {
			model.addAttribute("patient", patient);
			return "/WEB-INF/views/showpatient.jsp";
		} else {
			return "/WEB-INF/views/error.jsp";
		}
	}
	
	@GetMapping("/updatepatient")
    public String showUpdatePatientPage(@RequestParam(name = "id") int id, Model model) {
        Patient patient = service.getPatientById(id);

        if (patient != null) {
            model.addAttribute("patient", patient);
            return "/WEB-INF/views/updatepatient.jsp";
        } else {
            return "/WEB-INF/views/error.jsp";
        }
    }

	@PostMapping("/updatepatient")
    public String updatePatient(@ModelAttribute Patient patient, Model model) {
        if (service.updatePatient(patient) != null) {
            model.addAttribute("message", "Record updated successfully!");
            return "/WEB-INF/views/recordupdated.jsp";
        } else {
            model.addAttribute("message", "Record not found or update failed.");
            return "/WEB-INF/views/error.jsp";
        }
    }

	@GetMapping("/deletepatient")
	public String showDeletePatientPage() {
		return "delete.jsp";
	}

	@PostMapping("/deletepatient")
	public String deletePatient(@RequestParam(name = "id") int id, Model model) {
	    boolean isDeleted = service.deletePatient(id);

	    if (isDeleted) {
	        model.addAttribute("message", "Record deleted successfully!");
	        return "/WEB-INF/views/recorddeleted.jsp";
	    } else {
	        model.addAttribute("message", "Record not found or deletion failed.");
	        return "/WEB-INF/views/error.jsp";
	    }
	}
	
	@GetMapping("/makeappointment")
    public String showMakeAppointmentPage(@RequestParam(name = "id") int id, Model model) {
        Patient patient = service.getPatientById(id);

        if (patient != null) {
            model.addAttribute("patient", patient);
            return "/WEB-INF/views/makeappointment.jsp";
        } else {
            return "/WEB-INF/views/error.jsp";
        }
    }

    @PostMapping("/makeappointment")
    public String makeAppointment(@RequestParam(name = "id") int id, @RequestParam(name = "appointmentDate") String appointmentDate, Model model) {
        
        Patient patient = service.getPatientById(id);

        if (patient != null) {
            model.addAttribute("message", "Appointment made successfully for Patient ID: " + id + " on " + appointmentDate);
            return "/WEB-INF/views/appointmentsuccess.jsp";
        } else {
            model.addAttribute("message", "Patient not found. Unable to make appointment.");
            return "/WEB-INF/views/error.jsp";
        }
    }
}