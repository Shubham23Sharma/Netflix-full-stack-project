package com.jspider.movieflex_servlet_project.controller;

import java.io.IOException;
import java.time.LocalDate;

import com.jspider.movieflex_servlet_project.dto.User;
import com.jspider.movieflex_servlet_project.service.UserService;
import com.jspider.movieflex_servlet_project.verification.EmailPasswordVerification;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(value = "/userRegistration")
public class UserRegisterController extends HttpServlet{

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			UserService service = new  UserService();
			
			String name = req.getParameter("name");
			String email = EmailPasswordVerification.emailVerification(req.getParameter("email"));
			String password = EmailPasswordVerification.passwordVerification(req.getParameter("password"));
			String gender = req.getParameter("gender");
			LocalDate date = LocalDate.parse(req.getParameter("dob"));
			Part image  = req.getPart("image");
			long phone  = Long.parseLong(req.getParameter("phone"));
			
			
			if((email!=null)&&(password!=null)) {
				User user = new User(name, email, password, date, phone, gender);
				service.userRegistrationService(user);
				req.getRequestDispatcher("user-login.jsp").forward(req, resp);;
			}else {
				req.setAttribute("userMsg", "email must contain @. and number (abc123@gmail.com)");
				req.setAttribute("userPass", "password must contain any one special char,number,alphabet one Uppercase,one Lowercase");
				req.getRequestDispatcher("user-registration.jsp").forward(req, resp);;
			}
		}
}
