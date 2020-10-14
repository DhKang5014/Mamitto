package com.DAO;

import java.sql.SQLException;
import com.model.master.DAO;

public class delete_mealDAO extends DAO{
	public int delete(String sql, String email, String num) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, email);
			getPsmt().setString(2, num);
			cnt = getPsmt().executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int select(String sql) {
		psmt(sql);
		int cnt = 0;
		try {
			
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
