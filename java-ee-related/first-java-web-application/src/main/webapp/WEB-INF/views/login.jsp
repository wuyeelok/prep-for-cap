<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">    

	<link rel="shortcut icon" href="favicon.ico" />
	
	
	
    <title>Login JSP</title>
  </head>
  
  <body>
    <h1>Login JSP</h1>

   <p>My First JSP</p>
   
   <form action="/fjwa/login.do" method="post">
   	<fieldset>
   		<label for="username">Username:&nbsp;</label>
   		<input type="text" id="username" name="username" required/>
   	</fieldset>
   	<fieldset>
   		<label for="password">Password:&nbsp;</label>
   		<input type="password" id="password" name="password" required/>
   	</fieldset>
   	<button type="submit">Login</button>
   </form>
   <div>${errorMessage}</div>
   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>