package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.select_mealDAO;
import com.DAO.statisticDAO;
import com.DTO.*;
import com.google.gson.Gson;

@WebServlet("/GetTest")
public class GetTest extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<statisticDTO> arr = new ArrayList<statisticDTO>();
		statisticDTO dto2 = new statisticDTO("화",4);
		statisticDTO dto3 = new statisticDTO("수",8);
		arr.add(dto2);
		arr.add(dto3);
		// Get in the the Save Meal\
			System.out.println("In com.ajax/GetTest Service ");
			
			// Encoding
			try {
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			String sql = "select count(rh_category), to_char(rh_time, 'mm-dd') as day from rhythm where email = ? and rh_category = ? group by to_char(rh_time, 'mm-dd') order by day desc";
			statisticDAO dao = new statisticDAO();

			// Get User Email Login
			HttpSession session = request.getSession();
			Cookie[] cookies = request.getCookies(); 
			String email = null;
		    String rh_category = "meal";
		    if(cookies != null){
		         
		        for(int i=0; i < cookies.length; i++){
		            Cookie c = cookies[i] ;
		             
		            // 저장된 쿠키 이름을 가져온다
		            String cName = c.getName();
		             
		            // 쿠키값을 가져온다
		            String cValue = c.getValue() ;
		            if(cName.equals("email")) {
		            	email = cValue;
		            }
		        }
		    }

		    ArrayList<statisticDTO> ar = dao.select_count(sql, email, rh_category);
			arr.add(ar.get(0));
					
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
