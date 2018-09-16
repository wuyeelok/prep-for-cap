package com.kennethwu;

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
	
	
}
