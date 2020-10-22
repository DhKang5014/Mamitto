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

import com.DAO.communicationDAO;
import com.DAO.joinDAO;
import com.DAO.selectDAO;
import com.DTO.communicationDTO;
import com.google.gson.Gson;
import com.model.master.DAO;

@WebServlet("/SelectCheckEmail")
public class SelectCheckEmail extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SelectCheckEmail Service >>");
		int cnt = 0;

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
		
		// check email, curtime
		System.out.println("email >> " + email);
		
		
		// Save Meal BG
		String sql = "select * from members";
		System.out.println("sql >> " + sql);
		
		// update dao
		selectDAO dao = new selectDAO();

		cnt = dao.checkEmail(sql, email);

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
			System.out.println("select success");
			String json = new Gson().toJson(cnt);
			out.print(json);
		}else {
			System.out.println("select fail");
		}
		

	}

}
