<%@ include file="../common/header.jspf" %>
	
	
    <title>Login JSP</title>
  </head>
  
  <body>
  	<%@ include file="../common/nav.jspf" %>
  	
  	<div class="container">
	   <h1>Login JSP</h1>
	
	   <p>My First JSP</p>
	   
	   <form action="/fjwa/login.do" method="post">
	   	<fieldset class="form-group">
	   		<label for="username">Username:&nbsp;</label>
	   		<input type="text" id="username" name="username" class="form-control form-control-sm" required/>
	   	</fieldset>
	   	<fieldset class="form-group">
	   		<label for="password">Password:&nbsp;</label>
	   		<input type="password" id="password" name="password" class="form-control form-control-sm" required/>
	   	</fieldset>
	   	<button type="submit" class="btn btn-info">Login</button>
	   </form>
	   <div>${errorMessage}</div>
   </div>
   
   <%@ include file="../common/footer.jspf"%>