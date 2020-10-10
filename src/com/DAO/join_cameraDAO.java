package com.DAO;

import java.sql.SQLException;
import com.model.master.*;

public class join_cameraDAO extends DAO{
	
	public int join_camera(String sql, String ip, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			System.out.println("join_cameraDAOs");
			System.out.println(sql + " / " + ip + " / " + " / " + email);
			getPsmt().setString(1, ip);
			getPsmt().setString(2, email);
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
