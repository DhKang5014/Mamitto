package com.DAO;

import java.sql.SQLException;
import java.sql.ResultSet;

import com.model.master.*;

public class loginDAO extends DAO {
	ResultSet rs = null;
	
	public DTO login(String sql, String email, String pw) {
		DTO dto_out = null;
		try {
			psmt(sql,email,pw);
			rs = getPsmt().executeQuery();
			
			String name = null;
			int age = 0;
			String gender = null;
			System.out.println(sql);
			System.out.println(email +" " + pw + " " + name +" " + age + " " + gender +"로그인 절차 1");
			
			while (rs.next()) {
				email = rs.getString(1);
				pw = rs.getString(2);
				name = rs.getString(3);
				age = rs.getInt(4);
				gender = rs.getString(5);
				System.out.println(email +" " + pw + " " + name +" " + age + " " + gender +"로그인 절차 2");
				dto_out = new DTO(email, pw, name, age, gender);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_out;
	}
	
	public DTO login(String sql, String email) {
		DTO dto_out = null;
		try {
			psmt(sql);
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			
			String name = null;
			int age = 0;
			String gender = null;
			String pw = null;
			System.out.println(sql);
			System.out.println(email +" " + pw + " " + name +" " + age + " " + gender +"로그인 절차 1");
			
			while (rs.next()) {
				email = rs.getString(1);
				pw = rs.getString(2);
				name = rs.getString(3);
				age = rs.getInt(4);
				gender = rs.getString(5);
				System.out.println(email +" " + pw + " " + name +" " + age + " " + gender +"로그인 절차 2");
				dto_out = new DTO(email, pw, name, age, gender);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_out;
	}

	
}
