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
			String query = "INSERT INTO Students (firstname, lastname, username, password, emailId, phoneNo) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, s.getFname());
			ps.setString(2, s.getLname());
			ps.setString(3, s.getUsername());
			ps.setString(4, s.getPassword());
			ps.setString(5, s.getEmail());
			ps.setString(6, s.getPhone());
			int result = ps.executeUpdate();

			if (result >= 1) {
				status = true;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return status;

	}

	@Override
	public List<StudentModel> getStudentDetails() {
		List<StudentModel> list = new ArrayList<>();

		try {
			con = DBConnection.getConnection();
			String query = "SELECT firstname, lastname, username, password, emailId, phoneNo FROM Students ";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentModel sm = new StudentModel();
				sm.setFname(rs.getString(1));
				sm.setLname(rs.getString(2));
				sm.setUsername(rs.getString(3));
				sm.setPassword(rs.getString(4));
				sm.setEmail(rs.getString(5));
				sm.setPhone(rs.getString(6));
				list.add(sm);
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return list;
	}

	@Override
	public boolean updateStudentDetails(String username) {
		try {
			con = DBConnection.getConnection();
			String sql = "UPDATE Students SET firstname = ?, lastname = ?,phoneNo = ?, emailId = ?, WHERE username = username";

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	@Override
	public StudentModel getStudentDetails(String username) {

		StudentModel sm = new StudentModel();
		try {
			con = DBConnection.getConnection();
			String query = "SELECT firstname, lastname, username, password, emailId, phoneNo FROM Students WHERE username = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				sm.setFname(rs.getString(1));
				sm.setLname(rs.getString(2));
				sm.setUsername(rs.getString(3));
				sm.setPassword(rs.getString(4));
				sm.setEmail(rs.getString(5));
				sm.setPhone(rs.getString(6));
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return sm;
	}

	@Override
	public boolean deleteStudent(String username) {
		try {
			con = DBConnection.getConnection();
			String query = "DELETE FROM Students WHERE username = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);

			int res = ps.executeUpdate();

			if (res >= 1) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

}
