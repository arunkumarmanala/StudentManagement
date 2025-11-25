<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RegistrationPage</title>
	
	
</head>
<body>
	<a href="StudnetList">Studnet List</a>
	<form action="signup" method="post">
	<input type="text" name = "Fristname" id="Fristname" placeholder="Enter frist name">
	<input type="text" name = "Lastname" id="Lastname" placeholder="Last name"> 
	<input type="text" name = "Username" id="Username" placeholder="Username">
	<input type="password" name = "Password" id="Password" placeholder="password">
	<input type="password" name = "Repassword" id="Repassword" placeholder="Repassword">
	<p id="err"></p>
	<input tel="Moblienumber" name = "Moblienumber" id="Moblienumber" placeholder="Moblienumber">
	<input text="Email" name = "Email" id=Email placeholder="Email">
	<button type="submit" >Submit</button>
	
	
	
	</form>
</body>
</html>