package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.ipDTO;
import com.DTO.mealDTO;
import com.DTO.trafficDTO;
import com.model.master.DAO;

public class ipDAO extends DAO{
	public ArrayList<ipDTO> select(String sql, String email) {
		System.out.println("I'm in ipDAO ! ");
		
		psmt(sql);
		// ArrayList
		ArrayList<ipDTO> ar = new ArrayList<ipDTO>();
		// Result set
		ResultSet rs = null;
		
		// will get from db
		String ip = null;
		
		// print parameters
		System.out.println("IN select_trafficDAO sql >> " + sql);
		System.out.println("IN select_trafficDAO email >> " + email);
		//------
		
		
		
		try {
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			int i = 0;
			while (rs.next()) {
				// 
				ip = rs.getString(1);
				// 
				System.out.println("select_trafficDAO >> ip >> " + ip);
				System.out.println("select_trafficDAO >> email >> " + email);
				//
				ipDTO dto = new ipDTO(ip, email);
				i++;
				// 
				ar.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ar;
	}

	public int select_size(String sql) {
		psmt(sql);
		ResultSet rs = null;
		int cnt = 0;
		try {
			
			rs = getPsmt().executeQuery();
			int i = 0;
			while (rs.next()) {
				//
				cnt = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
