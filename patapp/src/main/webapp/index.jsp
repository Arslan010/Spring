<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Appointment Controller</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ecf0f1;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        #heading-container {
            text-align: center;
            padding: 20px;
            width: 100%;
            background-color: #3498db;
            color: #fff;
        }

        #button-container {
            text-align: center;
            margin: 20px;
            padding: 20px;
            border: 2px solid #2980b9;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        button {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            cursor: pointer;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #2074a0;
        }
    </style>
</head>

<body>
    <div id="heading-container">
        <h2>Patient Appointment Controller</h2>
    </div>

    <div id="button-container">
        <button onclick="showAllPatients()">Show All Patients</button>
        <button onclick="navigateToSavePatient()">Save a Patient</button>
        <button onclick="navigateToFindPatient()">Find a Patient</button>
        <button onclick="navigateToUpdatePatient()">Update a Patient</button>
        <button onclick="navigateToDeletePatient()">Delete a Patient</button>
        <button onclick="navigateToMakeAppointment()">Make an Appointment</button>
    </div>

    <script>
        function navigateToSavePatient() {
            window.location.href = "savepatient.jsp";
        }
        
        function navigateToMakeAppointment(){
        	window.location.href = "makeappointment.jsp";
        }

        function navigateToDeletePatient() {
            window.location.href = "delete.jsp";
        }

        function showAllPatients() {
            window.location.href = "getpatients?showAll=true";
        }

        function navigateToFindPatient() {
            window.location.href = "findpatient.jsp";
        }

        function navigateToAssignAppointment() {
            window.location.href = "assignAppointment.jsp";
        }

        function navigateToUpdatePatient() {
            window.location.href = "updatepatient.jsp";
        }

        function handleNavigationError() {
            alert("Error navigating to the requested page.");
        }
    </script>
</body>
</html>
