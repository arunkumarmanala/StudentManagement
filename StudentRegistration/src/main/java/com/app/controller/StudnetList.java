package com.app.controller;

import java.io.IOException;
import java.util.List;

import com.app.dao.StudentDao;
import com.app.model.StudentModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudnetList")
public class StudnetList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao sd=new StudentDao();
		
		List<StudentModel> sts=sd.getStudentDetails();
		
		request.setAttribute("studlist", sts);
		RequestDispatcher rd=request.getRequestDispatcher("students-list.jsp");
		rd.forward(request, response);
		
	}



}
