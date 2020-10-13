package com.DAO;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.mealDTO;
import com.model.master.DAO;

public class select_mealDAO extends DAO{
	
	public ArrayList<mealDTO> select(String sql, String email) {
		psmt(sql);
		//
		ArrayList<mealDTO> ar = new ArrayList<mealDTO>();
		//
		ResultSet rs = null;
		//
		int rh_num = 0;
		String rh_category = null;
		String rh_content = null;
		String rh_time = null;
		System.out.println("IN select_mealDAO sql >> " + sql);
		System.out.println("IN select_mealDAO email >> " + email);
		//
		try {
			getPsmt().setString(1, email);
			rs = getPsmt().executeQuery();
			int i = 0;
			while (rs.next()) {
				// 
				rh_num = rs.getInt(1);
				rh_category = rs.getString(2);
				rh_content = rs.getString(3);
				rh_time = rs.getString(4);
				
				// 
				System.out.println("select_mealDAO >> name >> " + rh_num);
				System.out.println("select_mealDAO >> age >> " + rh_category);
				System.out.println("select_mealDAO >> gender >> " + rh_content);
				System.out.println("select_mealDAO >> post_title >> " + rh_time);
				//
				mealDTO dto = new mealDTO(rh_num, rh_category, rh_content, rh_time);
				i++;
				// 
				ar.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ar;
	}
	
}
