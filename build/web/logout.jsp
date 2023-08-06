<%-- 
    Document   : logout
    Created on : 7 Apr, 2022, 5:42:44 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
session.invalidate();
response.sendRedirect("index.html");
%>
    </body>
</html>
