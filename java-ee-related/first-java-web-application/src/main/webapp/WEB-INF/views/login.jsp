<!doctype html>
<%@page import="java.util.Date"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    

    <title>Login JSP</title>
  </head>
  <%
  System.out.println(request.getParameter("name"));
  Date date = new Date();
  %>
  
  <body>
    <h1>Login JSP</h1>

   <p>My First JSP</p>
   <p>My name is ${name}!!!</p>
   <div>The date is: <%=date%></div>
  </body>
</html>