package com.jspider.movieflex_servlet_project.controller;

import java.io.IOException;

import com.jspider.movieflex_servlet_project.dao.UserDao;
import com.jspider.movieflex_servlet_project.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/userLogin")
public class UserLoginController extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		UserDao dao = new UserDao();
		
		String email = req.getParameter("userEmail");
		String password = req.getParameter("userPassword");
		
		User user=dao.fetchUserByEmailDao(email);
		
		if(user!=null) {
			
			if(user.getPassword().equals(password)) {
				req.getRequestDispatcher("user-home.jsp").forward(req, resp);
			}else {
				req.setAttribute("userMsg", "password is invalid");
				req.getRequestDispatcher("user-login.jsp").forward(req, resp);
			}
			
		}else {
			req.setAttribute("userMsg", "email is invalid");
			req.getRequestDispatcher("user-login.jsp").forward(req, resp);
		}
		
	}
}
