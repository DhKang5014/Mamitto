package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.mealDTO;
import com.DTO.statisticDTO;
import com.model.master.DAO;

public class statisticDAO extends DAO{

	ArrayList<statisticDTO> arr = new ArrayList<statisticDTO>();
	
	public int select_size(String sql) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public ArrayList<statisticDTO> select_count(String sql, String email, String rh_category) {
		psmt(sql);
		//
		ArrayList<statisticDTO> ar = new ArrayList<statisticDTO>();
		//
		ResultSet rs = null;
		//
		int rh_count = 0;
		String rh_time = null;
		System.out.println("IN select_countDAO sql >> " + sql);
		System.out.println("IN select_countDAO email >> " + email);
		System.out.println("IN select_countDAO rh_category >> " + rh_category);
		//
		try {
			getPsmt().setString(1, email);
			getPsmt().setString(2, rh_category);
			System.out.println("psmt 세팅");
			rs = getPsmt().executeQuery();
			while (rs.next()) {
				// 
				rh_count = rs.getInt(1);
				rh_time = rs.getString(2);
				
				// 
				System.out.println("select_countDAO >> rh_count >> " + rh_count);
				System.out.println("select_countDAO >> rh_time >> " + rh_time);
				//
				statisticDTO dto = new statisticDTO(rh_time, rh_count);
				// 
				ar.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ar;
	}
}
