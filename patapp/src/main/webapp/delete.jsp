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
        <h2>Delete Confirmation</h2>
        <p>Please enter the ID of the patient you want to delete:</p>
        <form action="deletepatient" method="post">
            <input type="number" name="id" required>
            <button type="submit" class="red">Yes, Delete</button>
        </form>
        <p style="text-align: center;">OR</p>
       <a href="index.jsp"><button id="back">No, Go Back</button></a>
    </div>
    </div>
</body>
</html>