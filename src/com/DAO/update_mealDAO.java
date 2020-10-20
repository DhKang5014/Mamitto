package com.DAO;

import java.sql.SQLException;
import com.model.master.DAO;

public class update_mealDAO extends DAO{
	public int update(String sql, String input_text, String email, int num) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, input_text);
			getPsmt().setString(2, email);
			getPsmt().setInt(3, num);
			
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
