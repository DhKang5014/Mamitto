package com.front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.*;

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
		
		System.out.println("FrontControllerSub >> "+ request.getParameter("baby_name"));
		
		Command command = null;
		String moveURL = null;
		System.out.println("FrontControllerSub >> "+reqURI);
		if (reqURI.equals("/JoinBabyServiceCon.dot")) {
			command = new JoinBabyServiceCon();
		}else if(reqURI.equals("/JoinCameraServiceCon.dot")) {
			command = new JoinCameraServiceCon();
		}else if(reqURI.equals("/WriteServiceCon.dot")) {
			command = new WriteServiceCon();
		}
		moveURL = command.execute(request,response);
		response.sendRedirect(moveURL);
	}

}
