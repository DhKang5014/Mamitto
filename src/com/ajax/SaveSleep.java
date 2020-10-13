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

import com.google.gson.Gson;

/**
 * Servlet implementation class WriteServiceCon
 */
@WebServlet("/SaveSleep")
public class SaveSleep extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Sleep\
		System.out.println("In com.ajax/SaveSleep Service ");
		
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
		
		
		// Save History
		String sql = "insert into history values( act_num_sequence.nextval , 'Sleep' , ? , ? ) ";
		
		
		
		
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
		String ar="{" + " email : " + email +" , " + " curtime : " + curtime + " } " ;
		String json = new Gson().toJson(ar);
		out.println(json);
	}

}
