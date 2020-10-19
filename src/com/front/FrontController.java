package com.front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.model.master.DTO;
import Member.*;


@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("프론트 접속");

		String reqURI = request.getRequestURI();

		
		Command command = null;
		String moveURL = null;
		System.out.println("reqURI url >> " + reqURI);
		if (reqURI.equals("/JoinServiceCon.do")) {
			command = new JoinServiceCon();
		}else if(reqURI.equals("/LoginServiceCon.do")) {
			command = new LoginServiceCon();
		}else if(reqURI.equals("/LogoutServiceCon.do")) {
			command = new LogoutServiceCon();
		}else if(reqURI.equals("/CommuServiceCon.do")) {
			command = new CommuServiceCon();
		}else if(reqURI.equals("/BodyCheckServiceCon.do")) {
			command = new BodyCheckServiceCon();
		}
		System.out.println("move url >> " + moveURL);
		moveURL = command.execute(request,response);
		
		response.sendRedirect(moveURL);
	}

}
