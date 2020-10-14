package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.select_mealDAO;
import com.DTO.mealDTO;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetSequence_baby_life
 */
@WebServlet("/GetSequence_baby_life")
public class GetSequence_baby_life extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/GetSequence_baby_life Service ");
		
		// Encoding
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		// Save Historys
		
		String sql = " SELECT last_number FROM USER_SEQUENCES WHERE SEQUENCE_NAME = UPPER('rh_num_sequence')";
		select_mealDAO dao = new select_mealDAO();
		int cnt = dao.select_size(sql);
		
	
		// Get User Email Login
		HttpSession session = request.getSession();
				
		// output json
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 
		if(cnt>0) {
			out.print(cnt);
		}else {
			System.out.println("select fail");
		}
	}

}
