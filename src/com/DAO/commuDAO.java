package com.DAO;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.commuDTO;
import com.model.master.*;

public class commuDAO extends DAO{
	ResultSet rs = null;
	ArrayList<commuDTO> dto_array = null;
	ArrayList<commuDTO> result = null;
	
	public int insert_commu(String sql, String title,String content, String po_pw, String email) {
		psmt(sql);
		int cnt = 0;
		try {
			System.out.println("commuDAO");
			System.out.println(sql + " / " + title + " / " + content + " / " + po_pw + " / " + email);
			getPsmt().setString(1, title);
			getPsmt().setString(2, content);
			getPsmt().setString(3, po_pw);
			getPsmt().setString(4, email);
			cnt = getPsmt().executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	public ArrayList<commuDTO> selectCommu(String sql, String email) {
		psmt(sql);
		ArrayList<commuDTO> to_array = new ArrayList<commuDTO>();
		ArrayList<commuDTO> result = null;
		try {
			int po_num =0;
			String title = null;
			String content = null;
			String po_pw = null;
			String time = null;
			commuDTO dto_out = null;
			getPsmt().setString(1, email);
			System.out.println("psmt 세팅");
			rs = getPsmt().executeQuery();
			System.out.println("sql execute");
			while (rs.next()) {
				po_num = rs.getInt(1);
				title = rs.getString(2);
				content = rs.getString(3);
				po_pw = rs.getString(4);
				email = rs.getString(5);
				time = rs.getString(6);
				dto_out = new commuDTO(po_num, title, content, po_pw, email, time);
				to_array.add(dto_out);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
			if(to_array.size()>0) {
				result = to_array;
			}
		}
		return result;
	}
	
		
}
