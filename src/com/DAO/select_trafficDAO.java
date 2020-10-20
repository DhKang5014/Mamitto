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
		
		psmt(sql);
		// ArrayList
		ArrayList<trafficDTO> ar = new ArrayList<trafficDTO>();
		// Result set
		ResultSet rs = null;
		
		// will get from db
		int act_num = 0;
		String action = null;
		String act_time = null;
		//email already get -- 
		
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
				act_num = rs.getInt(1);
				action = rs.getString(2);
				act_time = rs.getString(3);
				
				// 
				System.out.println("select_trafficDAO >> act_num >> " + act_num);
				System.out.println("select_trafficDAO >> action >> " + action);
				System.out.println("select_trafficDAO >> act_time >> " + act_time);
				System.out.println("select_trafficDAO >> email >> " + email);
				//
				mealDTO dto = new mealDTO(rh_num, rh_category, rh_time, email);
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
