<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Make Appointment</title>
</head>
<body>
    <h2>Make Appointment</h2>
    <form action="makeappointment" method="post">
        Patient ID: <input type="text" name="patientId"><br>
        Appointment Date: <input type="date" name="appointmentDate"><br>
        <!-- Add more fields as needed -->
        <input type="submit" value="Make Appointment">
    </form>
</body>
</html>
