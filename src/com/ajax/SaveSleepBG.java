package com.ajax;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		// get email, cur time
		String email = request.getParameter("email");
		String curtime = request.getParameter("curtime");
		String category = request.getParameter("category");

		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("curtime >> " + curtime);
		System.out.println("category >> " + category);

		// Save Meal BG
		String sql = "sadf";
		System.out.println("sql >> " + sql);

	}

}
