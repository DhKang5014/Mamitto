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
import com.DTO.*;
import com.google.gson.Gson;

@WebServlet("/GetTest")
public class GetTest extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<statisticDTO> arr = new ArrayList<statisticDTO>();
		statisticDTO dto = new statisticDTO("월",7);
		statisticDTO dto2 = new statisticDTO("화",4);
		statisticDTO dto3 = new statisticDTO("수",8);
		arr.add(dto);
		arr.add(dto2);
		arr.add(dto3);
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
			
			System.out.println("success");
			String json = new Gson().toJson(arr);
			out.print(json);
		
	}

}
