<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">    

	<link rel="shortcut icon" href="favicon.ico" />
    

    <title>Todo JSP</title>
  </head>
  
  <body>    
	<p>Welcome ${username} !!</p>
	<p>Your Todos are:</p>
	<ol>
		
		<c:forEach items="${todos}" var="todo">
			<li>${todo.name},&nbsp;Category:&nbsp;${todo.category}&nbsp;&nbsp;
			<a href="/fjwa/delete-todo.do?todoName=${todo.name}&todoCategory=${todo.category}">Delete</a></li>
		</c:forEach>
		
	</ol>
	
	<form action="/fjwa/todo.do" method="post">
		<fieldset>
			<label id="newTodoName">New Todo Name:&nbsp;</label>
			<input type="text" id="newTodoName" name="newTodoName" required/>
		</fieldset>
		<fieldset>
			<label id="newTodoCategory">New Todo Category:&nbsp;</label>
			<input type="text" id="newTodoCategory" name="newTodoCategory" required/>
		</fieldset>
		<button type="submit">Add</button>
	</form>
  
   	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>