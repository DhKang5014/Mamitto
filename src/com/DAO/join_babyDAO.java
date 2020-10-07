package com.DAO;


import java.sql.SQLException;
import com.model.master.*;

public class join_babyDAO extends DAO{
	
	public int join_baby(String sql, String phon_num, String baby_name,String birth, String baby_gender, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, phon_num);
			getPsmt().setString(2, baby_name);
			getPsmt().setString(3, birth);
			getPsmt().setString(4, baby_gender);
			getPsmt().setString(5, email);
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
