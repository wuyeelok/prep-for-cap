<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    

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
  </body>
</html>