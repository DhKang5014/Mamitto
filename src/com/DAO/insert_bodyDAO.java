package com.DAO;

import java.sql.SQLException;

import com.model.master.DAO;

public class insert_bodyDAO extends DAO{
	public int insert(String sql, String email, String height, String weight) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, height);
			getPsmt().setString(2, weight);
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
