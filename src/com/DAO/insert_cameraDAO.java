package com.DAO;

import java.sql.SQLException;

import com.model.master.DAO;

public class insert_cameraDAO extends DAO{
	
	public int insert(String sql, String content ,int level, String email) {
		System.out.println("insert_cameraDAO IN ");
		System.out.println("action >>" + content);
		System.out.println("level >>" + level);
		System.out.println("email >>" + email);
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, content);
			getPsmt().setInt(2, level);
			getPsmt().setString(3, email);
	
			cnt = getPsmt().executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}
