package com.app.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * WebServlet for routing get Student Details request to student-details.jsp
 * @author Ramakrishna
 */
@WebServlet("/read")
public class ReadStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ReadStudent() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("student-details.jsp");
		rd.forward(request, response);
	}


}
