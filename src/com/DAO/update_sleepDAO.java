package com.DAO;

import java.sql.SQLException;

import com.model.master.DAO;

public class update_sleepDAO extends DAO{
	public int update(String sql, String input_text1, String input_text2, String email, int num) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, input_text1);
			getPsmt().setString(2, input_text2);
			getPsmt().setString(3, email);
			getPsmt().setInt(4, num);
			
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
