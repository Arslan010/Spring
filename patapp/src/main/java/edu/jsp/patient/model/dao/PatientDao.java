package edu.jsp.patient.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import org.springframework.stereotype.Component;

import edu.jsp.patient.model.dto.Appointment;
import edu.jsp.patient.model.dto.Patient;

@Component
public class PatientDao {

    public Patient savePatient(Patient patient) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            if (patient != null) {
                transaction.begin();
                manager.persist(patient);
                transaction.commit();
                return patient;
            } else {
                return null;
            }
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
            return null;
        }
    }

    public List<Patient> getAllPatients() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();

        try {
            javax.persistence.Query query = manager.createQuery("SELECT p FROM Patient p");
            List<Patient> patients = query.getResultList();
            return patients;
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
    }

    public Patient getPatientById(int id) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();

        try {
            return manager.find(Patient.class, id);
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
    }

    public Patient updatePatient(Patient patient) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            transaction.begin();
            Patient existingPatient = manager.find(Patient.class, patient.getId());

            if (existingPatient != null) {
                existingPatient.setName(patient.getName());
                existingPatient.setAge(patient.getAge());
                existingPatient.setGender(patient.getGender());
                manager.merge(existingPatient);
                transaction.commit();
                return existingPatient;
            } else {
                return null;
            }
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
            return null;
        } finally {
            manager.close();
        }
    }

    public boolean deletePatient(int id) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            Patient patient = manager.find(Patient.class, id);

            if (patient != null) {
                transaction.begin();
                manager.remove(patient);
                transaction.commit();
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Appointment saveAppointment(Appointment appointment) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();
        EntityTransaction transaction = manager.getTransaction();

        try {
            if (appointment != null) {
                transaction.begin();
                manager.persist(appointment);
                transaction.commit();
                return appointment;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Appointment> getAppointmentsByPatientId(int patientId) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("patient_app");
        EntityManager manager = factory.createEntityManager();

        try {
            javax.persistence.Query query = manager.createQuery("SELECT a FROM Appointment a WHERE a.patient.id = :patientId");
            query.setParameter("patientId", patientId);
            List<Appointment> appointments = query.getResultList();
            return appointments;
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        } finally {
            manager.close();
        }
    }
}
