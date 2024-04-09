<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Patient</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }
        .confirmation-container {
            text-align: center;
        }

        #container {
            text-align: center;
            margin: 20px;
            padding: 20px;
            border: 2px solid #e74c3c;
            border-radius: 8px;
            background-color: #e74c3c;
            color: #fff;
        }

        input {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            cursor: pointer;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #c0392b;
        }

        #back{
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            cursor: pointer;
            background-color: rgb(114, 118, 226);
            color: #fff;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s;

        }
      
    </style>
</head>
<body>
    <div class="confirmation-container">
        <div class="confirmation-container">
        <h2>Update Confirmation</h2>
        <p>Please enter the ID of the patient you want to update:</p>
        <form action="updatepatient" method="post">
            <input type="number" name="id" required>
           <br> <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="" required><br>
            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" value="age" required><br>
             <label for="contact">Contact:</label>
            <input type="number" id="contact" name="contact" value="contact" required><br>
            <label for="weight">Weight:</label>
            <input type="number" id="weight" name="weight" value="weight" required><br>
             <label for="gender">Gender:</label>
            <select id="gender" name="gender">
                <option value="Male" ${patient.gender eq 'Male' ? 'selected' : ''}>Male</option>
                <option value="Female" ${patient.gender eq 'Female' ? 'selected' : ''}>Female</option>
                <option value="Other" ${patient.gender eq 'Other' ? 'selected' : ''}>Other</option>
            </select><br>
            <button type="submit" class="red">Yes, Update</button>
            
        </form>
        <p style="text-align: center;">OR</p>
       <a href="index.jsp"><button id="back">No, Go Back</button></a>
    </div>
    </div>
</body>
</html>