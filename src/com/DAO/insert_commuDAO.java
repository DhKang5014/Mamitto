package com.DAO;

import java.sql.SQLException;

import com.model.master.DAO;

public class insert_commuDAO extends DAO{

	public int insert(String sql, String title, String content, String po_pw, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, title);
			getPsmt().setString(2, content);
			getPsmt().setString(3, po_pw);
			getPsmt().setString(4, email);
	
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
