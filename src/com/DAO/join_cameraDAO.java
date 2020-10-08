package com.DAO;

import java.sql.SQLException;
import com.model.master.*;

public class join_cameraDAO extends DAO{
	
	public int join_camera(String sql, String name, String ip, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			getPsmt().setString(1, ip);
			getPsmt().setString(1, ip);
			getPsmt().setString(1, ip);
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
