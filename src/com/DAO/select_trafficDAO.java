package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.mealDTO;
import com.DTO.trafficDTO;
import com.model.master.DAO;

public class select_trafficDAO extends DAO{

	public ArrayList<trafficDTO> select(String sql, String email) {
		System.out.println("I'm in Select_traffic DAO! ");
		// print sql query
		System.out.println("sql >> " + sql);
		psmt(sql);
		
		// ArrayList
		ArrayList<trafficDTO> ar = new ArrayList<trafficDTO>();
		// Result set
		ResultSet rs = null;
		
		// will get from db
		int act_num = 0;
		String action = null;
		String act_time = null;
		int level = 0;
		
		//email already get -- 
		
		// print parameters
		System.out.println("IN select_trafficDAO sql >> " + sql);
		System.out.println("IN select_trafficDAO email >> " + email);
		//------
		
		
		
		try {
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			//int i = 0;
			while (rs.next()) {
				// 
				act_num = rs.getInt("act_num");
				action = rs.getString("action");
				act_time = rs.getString("act_time");
				level = rs.getInt("level");
				email = rs.getString("email");
				// 
				System.out.println("select_trafficDAO >> act_num >> " + act_num);
				System.out.println("select_trafficDAO >> action >> " + action);
				System.out.println("select_trafficDAO >> act_time >> " + act_time);
				System.out.println("select_trafficDAO >> level >> " + level);
				System.out.println("select_trafficDAO >> email >> " + email);
				//
				trafficDTO dto = new trafficDTO(act_num, action, act_time, level, email);
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
