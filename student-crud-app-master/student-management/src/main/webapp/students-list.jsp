<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.app.model.StudentModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Students List</title>
	</head>
	<body>
		<%List<StudentModel> students = (List<StudentModel>) request.getAttribute("studlist"); %>
		<table>
		<% for(StudentModel s : students) {%>
			<tr>
				<td><%= s.getFname() %> </td>
				<td><%= s.getLname() %></td>
				<td><%= s.getUsername()%></td>
				<td><%= s.getPassword() %></td>
				<td><%= s.getEmail() %></td>
				<td><%= s.getPhone() %></td>
				
			</tr>
			
			<%} %>
		</table>
	</body>
</html>