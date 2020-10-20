package com.ajax;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.update_sleepDAO;

@WebServlet("/SaveSleepBG")
public class SaveSleepBG extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SaveSleepBG Service >>");

		// Encoding
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// get email, cur times
		String email = request.getParameter("email");
		String curtime = request.getParameter("curtime");
		String category = request.getParameter("category");
		int num = Integer.parseInt(request.getParameter("num"));
		String input_text1 = request.getParameter("input_text1");
		String input_text2 = request.getParameter("input_text2");
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("curtime >> " + curtime);
		System.out.println("num >> " + num);
		System.out.println("input_text1 >> " + input_text1);
		System.out.println("input_text2 >> " + input_text2);
		
		
		// Save Meal BG
		String sql = "update rhythm set rh_time = ?, rh_sleep = ? where email = ? and rh_num = ? ";
		System.out.println("sql >> " + sql);
		
		// update dao
		update_sleepDAO dao = new update_sleepDAO();
		int cnt = dao.update(sql, input_text1, input_text2, email, num);
		
		if(cnt==0) {
			System.out.println("update fail !! ");
		}else {
			System.out.println("update success !! ");
		}

	}

}
