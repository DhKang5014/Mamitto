package com.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.communicationDTO;
import com.model.master.DAO;

public class communicationDAO extends DAO{
	
	public ArrayList<communicationDTO> select(String sql) {
		psmt(sql);
		//
		ArrayList<communicationDTO> ar = new ArrayList<communicationDTO>();
		//
		ResultSet rs = null;
		//
		int po_num= 0;
		String po_title = null;
		String po_content = null;
		String po_pw = null;
		String time = null;
		String email = null;
		
		//System.out.println("IN communicationDAO email >> " + email);
		
		
		try {
			
			rs = getPsmt().executeQuery();
			while (rs.next()) {
				//
				po_num = rs.getInt("po_num");
				po_title = rs.getString("po_title");
				po_content =rs.getString("po_content");
				po_pw = rs.getString("po_pw");
				time = rs.getString("po_time");
				email = rs.getString("email");
				//
				System.out.println("select_mealDAO >> po_num >> " + po_num);
				System.out.println("select_mealDAO >> po_title >> " + po_title);
				System.out.println("select_mealDAO >> po_content >> " + po_content);
				System.out.println("select_mealDAO >> po_pw >> " + po_pw);
				System.out.println("select_mealDAO >> time >> " + time);
				System.out.println("select_mealDAO >> email >> " + email);
				//
				if(po_pw.equals("공개")) {
					communicationDTO dto = new communicationDTO(po_num, po_title, po_content, po_pw, time, email);
					//
					ar.add(dto);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return ar;
	}
	
	public ArrayList<communicationDTO> select(String sql, String search_val) {
		psmt(sql);
		//
		ArrayList<communicationDTO> ar = new ArrayList<communicationDTO>();
		//
		ResultSet rs = null;
		//
		int po_num= 0;
		String po_title = null;
		String po_content = null;
		String po_pw = null;
		String time = null;
		String email = null;
			
		try {
			getPsmt().setString(1, search_val);
			rs = getPsmt().executeQuery();
			while (rs.next()) {
				//
				po_num = rs.getInt("po_num");
				po_title = rs.getString("po_title");
				po_content =rs.getString("po_content");
				po_pw = rs.getString("po_pw");
				time = rs.getString("po_time");
				email = rs.getString("email");
				//
				System.out.println("select_mealDAO >> po_num >> " + po_num);
				System.out.println("select_mealDAO >> po_title >> " + po_title);
				System.out.println("select_mealDAO >> po_content >> " + po_content);
				System.out.println("select_mealDAO >> po_pw >> " + po_pw);
				System.out.println("select_mealDAO >> time >> " + time);
				System.out.println("select_mealDAO >> email >> " + email);
				//
				if(po_pw.equals("공개")) {
					communicationDTO dto = new communicationDTO(po_num, po_title, po_content, po_pw, time, email);
					//
					ar.add(dto);
				}
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

	public ArrayList<communicationDTO> select(String sql, String email, int po_num) {
		psmt(sql);
		//
		ArrayList<communicationDTO> ar = new ArrayList<communicationDTO>();
		//
		ResultSet rs = null;
		//
		//int po_num= 0;
		String po_title = null;
		String po_content = null;
		String po_pw = null;
		String time = null;
		//String email = null;
			
		try {
			getPsmt().setString(1, email);
			getPsmt().setInt(2, po_num);
			rs = getPsmt().executeQuery();
			while (rs.next()) {
				//
				po_num = rs.getInt("po_num");
				po_title = rs.getString("po_title");
				po_content =rs.getString("po_content");
				po_pw = rs.getString("po_pw");
				time = rs.getString("po_time");
				email = rs.getString("email");
				//
				System.out.println("select_mealDAO >> po_num >> " + po_num);
				System.out.println("select_mealDAO >> po_title >> " + po_title);
				System.out.println("select_mealDAO >> po_content >> " + po_content);
				System.out.println("select_mealDAO >> po_pw >> " + po_pw);
				System.out.println("select_mealDAO >> time >> " + time);
				System.out.println("select_mealDAO >> email >> " + email);
				//
				if(po_pw.equals("공개")) {
					communicationDTO dto = new communicationDTO(po_num, po_title, po_content, po_pw, time, email);
					//
					ar.add(dto);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return ar;
	}
}
