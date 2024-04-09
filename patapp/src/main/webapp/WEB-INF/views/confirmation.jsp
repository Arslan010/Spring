<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Confirmation</title>
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
            text-align: center;
        }

        .confirmation-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }

        h2 {
            color: #333;
            margin-bottom: 15px;
        }

        p {
            color: #555;
            margin-bottom: 20px;
        }

        button, a {
            display: inline-block;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s;
            text-decoration: none;
            color: #fff;
        }

        button {
            background-color: #e74c3c;
            margin-right: 10px;
        }

        button:hover {
            background-color: #c0392b;
        }

        a {
            background-color: #3498db;
        }

        a:hover {
            background-color: #2074a0;
        }
    </style>
</head>
<body>
    <div class="confirmation-container">
        <h2>Delete Confirmation</h2>
        <p>Are you sure you want to delete this record?</p>
        <form id="deleteForm" action="/deletepatient" method="post">
            <input type="hidden" name="id" value="${param.id}">
        </form>
        <button onclick="submitForm()">Yes, Delete</button>
        <p>or</p>
        <a href="index.jsp">No, Go Back</a>

        <script>
            function submitForm() {
                document.getElementById("deleteForm").submit();
            }
        </script>
    </div>
</body>
</html>