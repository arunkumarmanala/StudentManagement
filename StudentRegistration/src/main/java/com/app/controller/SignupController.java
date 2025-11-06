package com.app.controller;

import java.io.IOException;

import com.app.dao.StudentDao;
import com.app.model.StudentModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao sd = new StudentDao();
		StudentModel sm = new StudentModel();

		String fristname = request.getParameter("Fristname");
		String lastname = request.getParameter("Lastname");
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		String moblienumber = request.getParameter("Moblienumber");
		String email = request.getParameter("Email");

		sm.setFname(fristname);
		sm.setLname(lastname);
		sm.setUsername(username);
		sm.setPassword(password);
		sm.setMobile(moblienumber);
		sm.setEmail(email);

		if (sd.submitUserDetails(sm)) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("index.jsp");
		}

		
	}

}
