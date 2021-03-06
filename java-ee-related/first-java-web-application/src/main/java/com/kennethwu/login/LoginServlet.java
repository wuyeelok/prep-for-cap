package com.kennethwu.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if(LoginService.isUserValid(username, password)) {
			req.getSession().setAttribute("username", username);
			res.sendRedirect("/fjwa/list-todo.do");			
		} else {
			req.setAttribute("errorMessage", "Invalid Credentials");
			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, res);
		}
		
		
	}
	
	

	
}
