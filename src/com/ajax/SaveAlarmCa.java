package com.ajax;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.update_mealDAO;

/**
 * Servlet implementation class SaveAlarmCa
 */
@WebServlet("/SaveAlarmCa")
public class SaveAlarmCa extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SaveAlarmCa Service >>");

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
		String alarm = request.getParameter("alarm");
		
		
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("alarm >> " + alarm);
		

		// check sql query
		String sql = "insert into history values(.next,'낙상',sysdate, ? ) ";
		System.out.println("sql >> " + sql);
		
		// DAO
		update_mealDAO dao = new update_mealDAO();
		int cnt = dao.update(sql,input_text,email,num);
		
		if(cnt == 0) {
			System.out.println("update fail ! ");
		}else {
			System.out.println("update success ! ");
		}
	}

}
