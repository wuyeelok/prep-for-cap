package com.kennethwu.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kennethwu.todo.TodoService;

@WebServlet(urlPatterns="/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/add-todo.jsp").forward(req, res);
	}




	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		Todo newTodo = new Todo(req.getParameter("newTodoName"), req.getParameter("newTodoCategory"));
		
		TodoService.addTodo(newTodo);
		
		res.sendRedirect("/fjwa/list-todo.do");
	}

	
	
	
}
