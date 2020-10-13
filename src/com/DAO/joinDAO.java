package com.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.master.DAO;
import com.model.master.DTO;

public class joinDAO extends DAO {

	public int join(String sql, String email, String pw,String name,int age, String tel) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, email);
			getPsmt().setString(2, pw);
			getPsmt().setString(3, name);
			getPsmt().setInt(4, age);
			getPsmt().setString(5, tel);
			cnt = getPsmt().executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	ResultSet rs = null;
	public DTO dup_check(String sql, String email) {
		DTO dto_out = null;
		try {
			psmt(sql);
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			
			String name = null;
			String pw = null;
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
}