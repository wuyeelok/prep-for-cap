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
    

    <title>Add Todo JSP</title>
  </head>
  
  <body>
  
  	<div class="container">
	  	<nav class="navbar navbar-expand-lg">
	  		<a class="navbar-brand" href="#">Brand</a>
	  		<ul class="nav navbar-nav">
		  		<li class="nav-item active">
		        	<a class="nav-link" href="#">Home</a>
		      	</li>
		      	<li class="nav-item">
					<a class="nav-link" href="/fjwa/list-todo.do">List Todos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/fjwa/add-todo.do">Add Todos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="https://in28minutes1.teachable.com/courses/enrolled/259228">in28Minutes</a>
				</li>
		  	</ul>
		  	
		  	<ul class="nav navbar-nav">
		  		<li class="nav-item">
					<a class="nav-link" href="/fjwa/logout.do">Logout</a>
				</li>
		  	</ul>
	  	</nav>
  	</div>
  	
  	<div class="container">
		<p>Add Todo</p>
		
		
		<form action="/fjwa/add-todo.do" method="post">
			<fieldset class="form-group">
				<label id="newTodoName">New Todo Name:&nbsp;</label>
				<input type="text" id="newTodoName" name="newTodoName" class="form-control form-control-sm" required/>
			</fieldset>
			<fieldset class="form-group">
				<label id="newTodoCategory">New Todo Category:&nbsp;</label>
				<input type="text" id="newTodoCategory" name="newTodoCategory" class="form-control form-control-sm" required/>
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form>
	</div>
	
	<div class="container">
   		<nav class="navbar navbar-expand-lg">
			<a class="navbar-brand" href="#">footer content</a>
		</nav>
   </div>
  
   	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>