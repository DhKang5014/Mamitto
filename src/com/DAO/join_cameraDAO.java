package com.DAO;

import java.sql.SQLException;
import com.model.master.*;

public class join_cameraDAO extends DAO{
	
	public int join_camera(String sql, String name, String ip, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			System.out.println("join_cameraDAOs");
			System.out.println(sql + " / " + ip + " / " + name + " / " + email);
			getPsmt().setString(1, ip);
			getPsmt().setString(2, name);
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
