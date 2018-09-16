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
    

    <title>List Todo JSP</title>
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
		<p>Welcome ${username} !!</p>
		<p>Your Todos are:</p>
		
		<div class="row bg-info text-white">
			<div class="col">Todo Name</div>
		    <div class="col">Todo Category</div>
		    <div class="col">Action</div>
		</div>
		<c:forEach items="${todos}" var="todo">
			<div class="row bg-light text-dark">
				<div class="col">${todo.name}</div>
			    <div class="col">${todo.category}</div>
			    <div class="col"><a href="/fjwa/delete-todo.do?todoName=${todo.name}&todoCategory=${todo.category}"><button class="btn btn-danger">Delete</button></a></div>
			</div>	
		</c:forEach>
					
		<br>
		<a href="/fjwa/add-todo.do"><button class="btn btn-warning">Add Todo</button></a>
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