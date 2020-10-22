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

import com.DAO.communicationDAO;
import com.DTO.communicationDTO;
import com.google.gson.Gson;

@WebServlet("/SelectCommunication")
public class SelectCommunication extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get in the the Save Meal\
		System.out.println("In com.ajax/SelectCommunication Service >>");

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
		String search_type = request.getParameter("search_type");
		String search_val = "%"+request.getParameter("search_val")+"%";
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("search_type >> " + search_type);
		System.out.println("search_val >> " + search_val);
		
		
		// Save Meal BG
		String sql = null;
		if (search_type == null) {
			sql = "select * from posts";	
		}else if (search_type.equals("email")) {
			sql = "select * from posts where email like ?";
		}else {
			sql = "select * from posts where po_title like ?";
		}
		System.out.println("sql >> " + sql);
		
		// update dao
		communicationDAO dao = new communicationDAO();
		ArrayList<communicationDTO> arr = new ArrayList<communicationDTO>();

		if (search_type == null) {
			arr = dao.select(sql);
		}else {
			arr = dao.select(sql, search_val);
		}
		
		int cnt = arr.size();
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
			System.out.println("select success");
			String json = new Gson().toJson(arr);
			out.print(json);
		}else {
			System.out.println("select fail");
		}
		

	}

}
