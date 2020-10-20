package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.mealDTO;
import com.model.master.DAO;

public class select_mealDAO extends DAO {

	public ArrayList<mealDTO> select(String sql, String email) {
		psmt(sql);
		//
		ArrayList<mealDTO> ar = new ArrayList<mealDTO>();
		//
		ResultSet rs = null;
		//
		int rh_num = 0;
		String rh_category = null;
		String rh_meal = null;
		String rh_defecate = null;
		String rh_sleep = null;
		String rh_content = null;// rh_time

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
				rh_meal =rs.getString(3);
				rh_defecate = rs.getString(4);
				rh_sleep = rs.getString(5);
				rh_content = rs.getString(6);// rh_time
				//
				System.out.println("select_mealDAO >> rh_num >> " + rh_num);
				System.out.println("select_mealDAO >> rh_category >> " + rh_category);
				System.out.println("select_mealDAO >> rh_meal >> " + rh_meal);
				System.out.println("select_mealDAO >> rh_defecate >> " + rh_defecate);
				System.out.println("select_mealDAO >> rh_sleep >> " + rh_sleep);
				System.out.println("select_mealDAO >> rh_content >> " + rh_content);
				//
				mealDTO dto = new mealDTO(rh_num, rh_category, rh_meal, rh_defecate, rh_sleep, rh_content, email);
				i++;
				//
				ar.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
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
		}finally {
			close();
		}
		return cnt;
	}

}
