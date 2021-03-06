package com.kennethwu.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kennethwu.todo.TodoService;

@WebServlet(urlPatterns="/list-todo.do")
public class ListTodoServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		req.setAttribute("todos", TodoService.getTodos());
		req.getRequestDispatcher("/WEB-INF/views/list-todo.jsp").forward(req, res);
	}	
	
	
}
