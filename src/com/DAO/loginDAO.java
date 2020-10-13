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
			String tel = null;
			System.out.println(sql);
			System.out.println(email +" " + pw + " " + name +" " + age + " 로그인 절차 1");
			
			while (rs.next()) {
				email = rs.getString(1);
				pw = rs.getString(2);
				name = rs.getString(3);
				age = rs.getInt(4);
				tel = rs.getString(5);
				System.out.println(email +" " + pw + " " + name +" " + age + " 로그인 절차 2");
				dto_out = new DTO(email, pw, name, age, tel);
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
			String pw = null;
			String tel = null;
			System.out.println(sql);
			System.out.println(email +" " + pw + " " + name +" " + age + " 로그인 절차 1");
			
			while (rs.next()) {
				email = rs.getString(1);
				pw = rs.getString(2);
				name = rs.getString(3);
				age = rs.getInt(4);
				tel = rs.getString(5);
				System.out.println(email +" " + pw + " " + name +" " + age + " 로그인 절차 2");
				dto_out = new DTO(email, pw, name, age, tel);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_out;
	}

	public DTO login_cam(String sql, String email) {
		DTO dto_out = null;
		try {
			psmt(sql);
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			
			String baby_name = null;
			String baby_birth = null;
			String baby_gender = null;
			String cam_ip = null;
			System.out.println(sql);
			System.out.println(email +" " + baby_name + " " + baby_birth +" " + baby_gender + " " + cam_ip +"로그인 절차 1");
			
			while (rs.next()) {
				email = rs.getString(1);
				baby_name = rs.getString("baby_name");
				baby_birth = rs.getString("baby_birth");
				baby_gender = rs.getString("baby_gender");
				cam_ip = rs.getString("cam_ip");
				System.out.println(email +" " + baby_name + " " + baby_birth +" " + baby_gender + " " + cam_ip +"로그인 절차 2");
				dto_out = new DTO(email, baby_name, baby_birth, baby_gender, cam_ip);
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
