<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD Event</title>
    </head>
    <body>
        <%
   
         String value=request.getParameter("sid");
           int sid=Integer.parseInt(value);
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
       PreparedStatement pst=conn.prepareStatement("delete from event where eventid=?");
        pst.setInt(1,sid);
        pst.executeUpdate();
        response.sendRedirect("AddEvent.jsp");
    %>
    </body>
</html>


