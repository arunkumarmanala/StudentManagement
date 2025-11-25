<%@ page import="com.app.model.StudentModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Enter Username</title>
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f5f7fa;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #2c3e50;
      color: white;
      padding: 15px 30px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .admin-section {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .admin-section img {
      width: 20px;
      height: 20px;
    }

    main {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 80px;
    }

    input[type="text"], input[type="submit"] {
      width: 250px;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 6px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    input[type="submit"] {
      background-color: #3498db;
      color: white;
      border: none;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #2980b9;
    }

    .student-details {
      margin-top: 30px;
      padding: 15px;
      background-color: #ecf0f1;
      border-radius: 8px;
      width: 300px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .student-details h3 {
      margin-bottom: 10px;
      color: #2c3e50;
    }

    .student-details p {
      margin: 5px 0;
      font-size: 14px;
    }
    
  </style>
</head>
<body>
  <header>
    <h1>Delete Student</h1>
    <div class="admin-section">
      <img src="favicon.ico" alt="Admin Icon">
      <span>Admin</span>
    </div>
  </header>

  <main>
    <h2>Please enter your username</h2>
    <form action="delete" method="get">
      <input type="text" name="username" placeholder="Enter Username">
      <input type="submit" value="Submit">
    </form>

  </main>
</body>
</html>

