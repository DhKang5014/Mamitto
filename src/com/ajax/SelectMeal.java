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

import com.DAO.insert_mealDAO;
import com.DAO.select_mealDAO;
import com.DTO.mealDTO;
import com.google.gson.Gson;

/**
 * Servlet implementation class SelectMeal
 */
@WebServlet("/SelectMeal")
public class SelectMeal extends HttpServlet {
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SelectMeal Service ");
		
		// Encoding
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// get email, cur time
		String email = request.getParameter("email");
		String curtime = request.getParameter("curtime");
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("curtime >> " + curtime);
		
		// Save Historys
		
		String sql = "select * from RHYTHM where email = ? order by rh_num";
		select_mealDAO dao = new select_mealDAO();
		ArrayList<mealDTO> arr = dao.select(sql, email);
		
		int cnt = arr.size();
		// Get User Email Login
		HttpSession session = request.getSession();
				
		// output json
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 
		if(cnt>0) {
			System.out.println("select success");
			String json = new Gson().toJson(arr);
			out.print(json);
		}else {
			System.out.println("select fail");
		}
		
		
		
		
		
		//json 
		
	}

}
