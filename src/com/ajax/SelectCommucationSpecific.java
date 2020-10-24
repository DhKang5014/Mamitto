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
import com.DTO.communicationDTO;
import com.google.gson.Gson;

@WebServlet("/SelectCommucationSpecific")
public class SelectCommucationSpecific extends HttpServlet {

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
		String po_num = request.getParameter("po_num");
		
		// check email, curtime
		System.out.println("email >> " + email);
		System.out.println("po_num >> " + po_num);
		
		
		// Save Meal BG
		String sql = "select * from posts where email = ? and po_num = ? ";
		System.out.println("sql >> " + sql);
		
		// update dao
		communicationDAO dao = new communicationDAO();
		ArrayList<communicationDTO> arr = new ArrayList<communicationDTO>();
		
		
		arr = dao.select(sql,email,Integer.parseInt(po_num));
		
		int cnt = arr.size();
		
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
