<%@ include file="../common/header.jspf" %>
    

    <title>Add Todo JSP</title>
  </head>
  
  <body>
  
  	<%@ include file="../common/nav.jspf" %>
  	
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
	
	<%@ include file="../common/footer.jspf"%>