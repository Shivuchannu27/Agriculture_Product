<%-- 
    Document   : Logout
    Created on : Mar 5, 2019, 12:57:47 PM
    Author     : comp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% session.invalidate();
     response.sendRedirect("index.html?successfully logged out.");
     
     %>
    </body>
</html>
