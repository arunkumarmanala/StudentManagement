<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin | Dashboard</title>
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
      margin-top: 60px;
    }

    .btn {
      width: 220px;
      padding: 12px;
      margin: 10px;
      font-size: 16px;
      border: none;
      border-radius: 6px;
      background-color: #3498db;
      color: white;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .btn:hover {
      background-color: #2980b9;
    }

    h2 {
      margin-bottom: 30px;
      color: #34495e;
    }
  </style>
</head>
<body>
  <header>
    <h1>Student Management</h1>
    <div class="admin-section">
      <img src="favicon.ico" alt="Admin Icon">
      <span>Admin</span>
    </div>
  </header>

  <main>
    <h2>Choose an Action</h2>
    <form action="add" method="post">
      <button class="btn">Add Student</button>
    </form>
    <form action="update-student.jsp" method="post">
      <button class="btn">Update Student</button>
    </form>
    <form action="read" method="get">
      <button class="btn">Get Student Details</button>
    </form>
    <form action="delete-student.jsp" method="post">
      <button class="btn">Remove Student</button>
    </form>
    <form action="studentlist" method ="get">
    <button class="btn">Get All Students</button>
    </form>
  </main>
</body>
</html>
