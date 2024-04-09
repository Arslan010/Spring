package edu.jsp.patient.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.jsp.patient.model.dto.Patient;
import edu.jsp.patient.model.dao.PatientDao;
import edu.jsp.patient.model.dto.Appointment; // Import Appointment class

@Component
public class PatientService {
    @Autowired
    private PatientDao dao;

    public Patient savePatient(Patient patient) {
        if (dao.savePatient(patient) != null) {
            return patient;
        } else {
            return null;
        }
    }

    public List<Patient> getAllPatients() {
        List<Patient> patients;
        if ((patients = dao.getAllPatients()) != null) {
            return patients;
        } else {
            return null;
        }
    }

    public Patient getPatientById(int id) {
        return dao.getPatientById(id);
    }

    public boolean deletePatient(int id) {
        return dao.deletePatient(id);
    }

    public Patient updatePatient(Patient patient) {
        return dao.updatePatient(patient);
    }

    public Appointment saveAppointment(Appointment appointment) {
        return dao.saveAppointment(appointment);
    }

    public List<Appointment> getAppointmentsByPatientId(int patientId) {
        return dao.getAppointmentsByPatientId(patientId);
    }
}
