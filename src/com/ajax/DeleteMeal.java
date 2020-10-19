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

import com.DAO.delete_mealDAO;
import com.DAO.insert_mealDAO;
import com.google.gson.Gson;

/**
 * Servlet implementation class DeleteMeal
 */
@WebServlet("/DeleteMeal")
public class DeleteMeal extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
			System.out.println("In com.ajax/DeleteMeal Service ");
			
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
			String num = request.getParameter("num");
			// check email, curtime
			System.out.println("email >> " + email);
			System.out.println("curtime >> " + curtime);
			System.out.println("num >> " + num);
			
			// Save Historys
			String sql = "delete from rhythm where email = ? and rh_num = ? ";
			delete_mealDAO dao = new delete_mealDAO();
			int cnt = dao.delete(sql, email, num);
			
			// 
			if(cnt!=0) {
				System.out.println("delete success");
			}else {
				System.out.println("delete fail");
			}
			
			String sql2 = "select max(rh_num) from rhythm";
			
			int max_size = dao.select(sql2);
			
			
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
			String ar="{" + " email : " + email +" , " + " curtime : " + curtime + " , num : " + num + ", max_size : "+ max_size +" } " ;
			String json = new Gson().toJson(ar);
			out.println(json);
	}

}
