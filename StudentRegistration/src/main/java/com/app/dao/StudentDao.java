package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.app.model.StudentModel;
import com.app.utility.DBConnection;

public class StudentDao implements StudentDaoInterface {
	Connection con;

	@Override
	public boolean submitUserDetails(StudentModel s) {
		boolean status = false;
		try {
			con = DBConnection.getConnection();
			String query = "insert into students(firstname,lastname,username,password,emailId,phoneNo) values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, s.getFname());
			ps.setString(2, s.getLname());
			ps.setString(3, s.getUsername());
			ps.setString(4, s.getPassword());
			ps.setString(5, s.getEmail());
			ps.setString(6, s.getMobile());

			int r = ps.executeUpdate();

			if (r >= 1) {
				status = true;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return status;
	}

	@Override
	public void getStudnetDetails(String username) {

	}

	@Override
	public List<StudentModel> getStudentDetails() {
		List<StudentModel> ls = new ArrayList<>();

		try {
			con = DBConnection.getConnection();
			String query = "SELECT firstname, lastname,username,password,emailId,phoneNo FROM students";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentModel sm = new StudentModel();
				sm.setFname(rs.getString(1));
				sm.setLname(rs.getString(2));
				sm.setUsername(rs.getString(3));
				sm.setPassword(rs.getString(4));
				sm.setEmail(rs.getString(5));
				sm.setMobile(rs.getString(6));

				ls.add(sm);

			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return ls;
	}

}
