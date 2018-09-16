<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    

    <title>Todo JSP</title>
  </head>
  
  <body>    

	<p>Your Todos are:</p>
	<ol>
		
		<c:forEach items="${todos}" var="todo">
			<li>${todo.name},&nbsp;Category:&nbsp;${todo.category}</li>
		</c:forEach>
		
	</ol> 
  </body>
</html>