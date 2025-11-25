package com.app.dao;

import java.util.List;

import com.app.model.StudentModel;

public interface StudentDaoInterface {
	
	public boolean submitUserDetails(StudentModel s);
	public List<StudentModel> getStudentDetails();
	public StudentModel getStudentDetails(String username);
	public boolean updateStudentDetails(String username);
	public boolean deleteStudent(String username);

}
