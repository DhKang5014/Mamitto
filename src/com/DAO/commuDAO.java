package com.DAO;


import java.sql.SQLException;
import com.model.master.*;

public class commuDAO extends DAO{
	
	public int insert_commu(String sql, String title,String content, String po_pw, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			System.out.println("commuDAO");
			System.out.println(sql + " / " + title + " / " + content + " / " + po_pw + " / " + email);
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
