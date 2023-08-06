<%-- 
    Document   : eventbookdb
    Created on : 6 Apr, 2022, 4:20:34 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           try{
               String sid=request.getParameter("ssid");
               String dbSid;
//                String dbServiceProvider;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                Statement stmt=con.createStatement();
                String query="select serviceprovider from event where eventid='sid'";
                stmt.executeQuery(query);
//                PreparedStatement pst=con.prepareStatement("select eventid,serviceprovider from event where eventid=?");
//                pst.setString(1,sid);
//                pst.executeUpdate();
                ResultSet rst=stmt.getResultSet();
                    while(rst.next()){
                         dbSid=rst.getString("eventid");
//                        dbServiceProvider=rst.getString("serviceprovider");
     
             }
           
           response.sendRedirect("BookingEvent.jsp");}
             catch(Exception e){out.println(e);}
         %>
    </body>
</html>
