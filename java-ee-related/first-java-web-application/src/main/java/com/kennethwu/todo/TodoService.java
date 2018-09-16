package com.kennethwu.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {

	private static List<Todo> todos = new ArrayList<>();
	
	static {
		todos.add(new Todo("Learn Servlet", "Study"));
		todos.add(new Todo("Learn Spring MVC", "Study"));
		todos.add(new Todo("Learn Spring Rest Service", "Study"));
	}

	public static List<Todo> getTodos() {
		return todos;
	}
	
	public static void addTodo(Todo todo) {
		todos.add(todo);
	}
	
	public static void removeTodo(Todo todo) {
		todos.remove(todo);
	}
}
