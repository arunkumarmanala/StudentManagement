package com.app.dao;

import java.util.List;

import com.app.model.StudentModel;

public interface StudentDaoInterface {
	public boolean submitUserDetails(StudentModel s);
	public void getStudnetDetails(String username);
	
	public List<StudentModel>getStudentDetails();
		
	
		
	
}
