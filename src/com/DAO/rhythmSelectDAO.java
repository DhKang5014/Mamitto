package com.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.ResultSet;

import com.model.master.*;

public class rhythmSelectDAO extends DAO {
	ResultSet rs = null;
	ArrayList<DTO> dto_array = null;

	// email을 통한 아이 정보값 찾기
	public ArrayList<DTO> rhythmSelect(String sql, String mail) {
		psmt(sql);
		String[] selectlist = new String[3];
		selectlist[0] = "식사";
		selectlist[1] = "취침";
		selectlist[2] = "배변";
		dto_array = new ArrayList<DTO>();
		ArrayList<DTO> result = null;
		try {
			for (int j = 0; j < selectlist.length; j++) {
			DTO dto_out = null;
			String email = mail;
			int count_rhythm = 0;
			getPsmt().setString(1, email);
			getPsmt().setString(2, selectlist[j]);
			System.out.println("psmt 세팅");
			rs = getPsmt().executeQuery();
			System.out.println("sql execute");
			while (rs.next()) {
				count_rhythm = rs.getInt(1);
				dto_out = new DTO(email, count_rhythm);
				dto_array.add(dto_out);
			}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
			if(dto_array.size()>0) {
				result = dto_array;
			}
		}
		return result;
	}

	// 리스트에 있는 값을 html형태로 수정작업
	public String getHtml(ArrayList<DTO> dto_array) {
		String str = null;
		for (int i = 0; i < dto_array.size(); i++) {
			str += "<tr>";
			str += "<td>" + dto_array.get(i).getEmail() + "</td>";
			str += "<td>" + dto_array.get(i).getName() + "</td>";
			str += "</tr>";
			System.out.println(dto_array.get(i).getEmail());
			System.out.println(dto_array.get(i).getName());
		}

		return str;
	}
	
	// 리스트 select 함수
//	public String select(String sql) {
//		psmt(sql);
//		dto_array = new ArrayList<DTO>();
//		String result = null;
//		try {
//			DTO dto_out = null;
//			rs = getPsmt().executeQuery();
//			String email = null;
//			String pw = null;
//			String name = null;
//			int age = 0;
//			int gender = 0;
//			while (rs.next()) {
//				email = rs.getString(1);
//				pw = rs.getString(2);
//				name = rs.getString(3);
//				age = rs.getInt(4);
//				gender = rs.getInt(5);
//				dto_out = new DTO(email, pw, name, age, gender);
//				dto_array.add(dto_out);
//			}
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			close();
//			if(dto_array.size()>0) result = getHtml(dto_array);
//		}
//		return result;
//	}
}
