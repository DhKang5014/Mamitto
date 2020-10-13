package com.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.ResultSet;

import com.model.master.*;

public class selectDAO extends DAO {
	ResultSet rs = null;
	ArrayList<DTO> dto_array = null;

	// email을 통한 아이 정보값 찾기
	public ArrayList<DTO> select(String sql, String mail) {
		psmt(sql);
		dto_array = new ArrayList<DTO>();
		ArrayList<DTO> result = null;
		try {
			DTO dto_out = null;
			String email = mail;
			String baby_name = null;
			String baby_birth = null;
			String baby_birth_fifty = null;
			String baby_birth_hundred = null;
			String cam_ip = null;
			getPsmt().setString(1, email);
			System.out.println("psmt 세팅");
			rs = getPsmt().executeQuery();
			System.out.println("sql execute");
			while (rs.next()) {
				baby_name = rs.getString(2);
				System.out.println("birth 가져오기 전");
				baby_birth = rs.getString(4);
				baby_birth_fifty = rs.getString(5);
				baby_birth_hundred = rs.getString(6);
				cam_ip = rs.getString(3);
				System.out.println("birth 가져온 후");
				dto_out = new DTO(email, baby_name, baby_birth, cam_ip, baby_birth_fifty, baby_birth_hundred);
				dto_array.add(dto_out);
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