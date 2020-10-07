package com.DAO;


import java.sql.SQLException;
import com.model.master.*;

public class join_babyDAO extends DAO{
	
	public int res_baby(String sql, String phon_num, String birth,String baby_name,int baby_age, int baby_gender, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, phon_num);
			getPsmt().setString(2, birth);
			getPsmt().setString(3, baby_name);
			getPsmt().setInt(4, baby_age);
			getPsmt().setInt(5, baby_gender);
			getPsmt().setString(6, email);
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
