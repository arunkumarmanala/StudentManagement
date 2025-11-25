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
 * A WebServlet which retrieves the Student details by username and 
 * routes to student-details.jsp
 * @author Ramakrishna 
 */

@WebServlet("/readStudent")
public class ReadStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReadStudentController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao sd = new StudentDao();
		String username = request.getParameter("username");

		StudentModel sm = sd.getStudentDetails(username);

		request.setAttribute("student", sm);

		RequestDispatcher rd = request.getRequestDispatcher("student-details.jsp");
		rd.forward(request, response);
	}

}
