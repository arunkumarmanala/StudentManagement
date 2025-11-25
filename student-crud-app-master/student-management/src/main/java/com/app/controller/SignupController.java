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

/*
 * A WebServlet that posts the Student details to the database and 
 * routes to  success.jsp if posted successfully else return to 
 * register.jsp
 * @author Ramakrishna 
 */

@WebServlet("/signup")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao s = new StudentDao();
		StudentModel sm = new StudentModel();

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		sm.setFname(fname);
		sm.setLname(lname);
		sm.setUsername(username);
		sm.setPassword(password);
		sm.setEmail(email);
		sm.setPhone(phone);

		if (s.submitUserDetails(sm)) {
			RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("register.jsp");
		}

	}

}
