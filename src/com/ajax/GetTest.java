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

import com.DAO.statisticDAO;
import com.DTO.*;
import com.google.gson.Gson;

@WebServlet("/GetTest")
public class GetTest extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<statisticDTO> arr = new ArrayList<statisticDTO>();
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
			String email = request.getParameter("email");
		    String rh_category = request.getParameter("rh_category");

		    // email과 rh_category 값으로 통계에 표시할 데이터들 뽑아오기
		    ArrayList<statisticDTO> ar = dao.select_count(sql, email, rh_category);
		    
		    // 불러온 ar에서 필요한 정보들을 뽑아 dto로 작성 -> dto값 json에 보내기 위해 arr 추가
		    for (int i = 0; i < ar.size(); i++) {
			    statisticDTO dto = new statisticDTO(ar.get(i).getRh_time(), ar.get(i).getRh_count());
				arr.add(dto);
			}
		    
					
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
