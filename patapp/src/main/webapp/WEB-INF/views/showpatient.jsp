<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Patient</title>
    <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

  
    
</style>


</head>
<body>
    <div>
        <h2>Patient Details</h2>
        <p>ID: ${patient.id}</p>
        <p>Name: ${patient.name}</p>
        <p>Age: ${patient.age}</p>
        <p>Gender: ${patient.gender}</p>
        <p>Weight: ${patient.weight}</p>
        <p>Contact: ${patient.contact}</p>
    </div>
</body>
</html>
