package com.ajax;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.insert_cameraDAO;

/**
 * Servlet implementation class SaveAlarmMic
 */
@WebServlet("/SaveAlarmMic")
public class SaveAlarmMic extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SaveAlarmMic Service >>");

		// Encoding
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// get email, cur time
		String email = request.getParameter("email");
		String alarm = "울음";
		int level = Integer.parseInt(request.getParameter("level"));
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("alarm text >> " + alarm);
		System.out.println("level >> " + level);

		// check sql query
		String sql = "insert into history values( act_num_sequence.nextval, ? , sysdate, ? , ? )";
		
		System.out.println("sql >> " + sql);
		
		// DAO
		insert_cameraDAO dao = new insert_cameraDAO();
		int cnt = dao.insert(sql, alarm , level, email);
		
		if(cnt == 0) {
			System.out.println("insert fail ! ");
		}else {
			System.out.println("insert success ! ");
		}
			
	}

}
