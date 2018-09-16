package com.kennethwu.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kennethwu.todo.TodoService;

@WebServlet(urlPatterns="/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		Todo deleteTodo = new Todo(req.getParameter("todoName"), req.getParameter("todoCategory"));
		
		TodoService.removeTodo(deleteTodo);
		
		res.sendRedirect("/fjwa/todo.do");
	}

	
	
	
	
}
