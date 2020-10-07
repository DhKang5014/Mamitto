package com.front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.JoinServiceCon;
import Member.LoginServiceCon;

/**
 * Servlet implementation class FrontControllerSub
 */
@WebServlet("*.dot")
public class FrontControllerSub extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		String reqURI = request.getRequestURI();
		String path = request.getContextPath();
		String resultURI = reqURI.substring(path.length() + 1);

		
		Command command = null;
		String moveURL = null;
		
		if (resultURI.equals("JoinBabyServiceCon.dot")) {
			command = new JoinServiceCon();
		}
		moveURL = command.execute(request,response);
		
		response.sendRedirect(moveURL);
	}

}
