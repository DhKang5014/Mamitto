package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.insert_mealDAO;
import com.google.gson.Gson;

/**
 * Servlet implementation class WriteServiceCon
 */
@WebServlet("/SaveMeal")
public class SaveMeal extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SaveMeal Service ");
		
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
		String curtime = request.getParameter("curtime");
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("curtime >> " + curtime);
		
		// Save Historys
		String sql = "insert into RHYTHM(rh_num, rh_category, email) values( rh_num_sequence.nextval , 'meal' , ? ) ";
		insert_mealDAO dao = new insert_mealDAO();
		int cnt = dao.insert(sql, email);
		
		// 
		if(cnt!=0) {
			System.out.println("insert success");
		}else {
			System.out.println("insert fail");
		}
		
		
		// Get User Email Login
		HttpSession session = request.getSession();
		
		//output json
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//json 
		String ar="{" + " email : " + email +" , " + " curtime : " + curtime + " } " ;
		String json = new Gson().toJson(ar);
		out.println(json);
	}

}
