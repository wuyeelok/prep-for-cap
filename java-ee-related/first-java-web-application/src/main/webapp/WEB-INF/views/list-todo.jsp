<%@ include file="../common/header.jspf" %>

    <title>List Todo JSP</title>
  </head>
  
  <body>
  
  <%@ include file="../common/nav.jspf" %>
  
  	
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
	
	<%@ include file="../common/footer.jspf"%>