<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Sign Up | Student </title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  <style>
    
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #F2F2F2;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
  width: 100%;
  max-width: 400px;
  padding: 2rem;
  background-color: #ffffff;
  border: 1px solid #dbe2ea;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.05);
}

h2 {
  text-align: center;
  margin-bottom: 1.5rem;
  color: #0D0D0D;
}

form input {
  width: 100%;
  padding: 0.75rem;
  margin-bottom: 1rem;
  border: 1px solid #0D0D0D;
  border-radius: 4px;
  font-size: 1rem;
  background-color: #F2F2F2;
  color: #0D0D0D;
}

form input::placeholder {
  color: #888;
}

form button {
  width: 100%;
  padding: 0.75rem;
  background-color: #F2A007;
  color: #ffffff;
  border: none;
  border-radius: 4px;
  font-size: 1rem;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

form button:hover {
  background-color: #F2CB05;
}



    
  </style>
</head>
<body>
  <div class="container">
    <h2>Student Registration</h2>
    <form action="signup" method="post">
      <input type="text" name="fname" id="fname" placeholder="Enter Firstname">
      <input type="text" name="lname" id="lname" placeholder="Enter Lastname">
      <input type="text" name="username" id="username" placeholder="Enter Username">
      <input type="password" name="password" id="password" placeholder="Enter Password">
      <input type="tel" name="phone" id="phone" placeholder="Enter Phone Number">
      <input type="text" name="email" id="email" placeholder="Enter Email Id">
      <input type="submit" value="Submit">
      
    </form>
    
  </div>
</body>
</html>
