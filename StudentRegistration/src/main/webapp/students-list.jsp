<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.app.model.StudentModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student-list</title>
</head>
<body>
	<%List<StudentModel> students= (List<StudentModel>) request.getAttribute("studlist");%>
	<table>
		<% for(StudentModel s : students){ %>
			<tr>
				<td><%= s.getFname()%></td>
				<td><%= s.getLname()%></td>
				<td><%= s.getUsername()%></td>
				<td><%= s.getEmail()%></td>
				<td><%= s.getMobile()%></td>
				
				
			</tr>
				
		
		<%} %>
	
	</table>

</body>
</html>