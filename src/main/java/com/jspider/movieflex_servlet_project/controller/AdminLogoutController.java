package com.jspider.movieflex_servlet_project.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/adminLogout")
public class AdminLogoutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession httpSession = req.getSession();
		
		if(httpSession.getAttribute("adminSession")!=null) {
			httpSession.invalidate();
			req.setAttribute("adminMsg", "You are logged out successfully");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);;
		}
	}
}
