<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="java.util.*, com.yourpackage.Student" %> --%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Student</title>
  <style type="text/css">
  
  body {
  font-family: 'Segoe UI', sans-serif;
  background-color: #F2F2F2;
  display: flex;
  justify-content: center;
  padding: 2rem;
}

.container {
  background-color: #fff;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.05);
  width: 100%;
  max-width: 500px;
}

h2, h3 {
  color: #0D0D0D;
  text-align: center;
}

input[type="text"] {
  width: calc(100% - 2rem);
  padding: 0.5rem;
  margin-bottom: 1rem;
  border: 1px solid #0D0D0D;
  border-radius: 4px;
  background-color: #F2F2F2;
}

button {
  background-color: #F2A007;
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #F2CB05;
}

.form-group {
  display: flex;
  align-items: center;
  margin-bottom: 1rem;
}

.form-group label {
  width: 100px;
  font-weight: bold;
}

.editable {
  flex: 1;
  padding: 0.5rem;
  background-color: #F2F2F2;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.fas {
  margin-left: 0.5rem;
  cursor: pointer;
  color: #F27405;
}
  
  </style>
   <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
  <div class="container">
    <h2>Search Student</h2>
    <input type="text" id="searchUsername" placeholder="Enter Username" />
    <button onclick="fetchStudent()">Search</button>

    <div id="studentForm" style="display:none;">
      <h3>Student Details</h3>
      <div class="form-group">
        <label>Firstname:</label>
        <span class="editable" id="firstname"></span>
        <i class="fas fa-pencil-alt" onclick="makeEditable('firstname')"></i>
      </div>
      <div class="form-group">
        <label>Lastname:</label>
        <span class="editable" id="lastname"></span>
        <i class="fas fa-pencil-alt" onclick="makeEditable('lastname')"></i>
      </div>
      <div class="form-group">
        <label>Phone:</label>
        <span class="editable" id="phone"></span>
        <i class="fas fa-pencil-alt" onclick="makeEditable('phone')"></i>
      </div>
      <div class="form-group">
        <label>Email:</label>
        <span class="editable" id="email"></span>
        <i class="fas fa-pencil-alt" onclick="makeEditable('email')"></i>
      </div>
    </div>
  </div>

  <script>
    function fetchStudent() {
      const username = document.getElementById("searchUsername").value;
      fetch(`FetchStudentServlet?username=${username}`)
        .then(res => res.json())
        .then(data => {
          document.getElementById("studentForm").style.display = "block";
          document.getElementById("firstname").textContent = data.firstname;
          document.getElementById("lastname").textContent = data.lastname;
          document.getElementById("phone").textContent = data.phone;
          document.getElementById("email").textContent = data.email;
        });
    }

    function makeEditable(fieldId) {
      const span = document.getElementById(fieldId);
      const oldValue = span.textContent;
      const input = document.createElement("input");
      input.type = "text";
      input.value = oldValue;
      input.onkeydown = function(e) {
        if (e.key === "Enter") {
          const newValue = input.value;
          const username = document.getElementById("searchUsername").value;
          fetch("UpdateStudentFieldServlet", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: `username=${username}&field=${fieldId}&value=${newValue}`
          }).then(() => {
            span.textContent = newValue;
            span.parentNode.replaceChild(span, input);
          });
        }
      };
      span.parentNode.replaceChild(input, span);
      input.focus();
    }
  </script>
</body>
</html>
