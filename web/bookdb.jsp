<%-- 
    Document   : bookdb
    Created on : 6 Apr, 2022, 11:51:23 PM
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
         <%         ResultSet cs=null;
                 String bookid=request.getParameter("bookid");
                 int c=Integer.parseInt(bookid);
                  String serviceprovider = request.getParameter("t1"); 
                  String state = request.getParameter("state");
                  String location = request.getParameter("location");
                 String place = request.getParameter("place"); 
                 String pincode = request.getParameter("pincode");
                  String event = request.getParameter("event");  
                  String otherservice= request.getParameter("es");
                  
                  String date = request.getParameter("date");
                  String name = request.getParameter("fullname");  
                  String useremail= request.getParameter("useremail");
                  String usercontact = request.getParameter("usercontact"); 
                   String contactno = request.getParameter("contactno"); 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(bookid)+1 from book");
                  cs=pst1.executeQuery();
                 if(c==0)
                {
                  c=1;
                 pst.setInt(1,c);
                }
                 else
                 {
                 while(cs.next())
                 {
                 pst.setInt(1,cs.getInt(1));
                 }
                }
                pst.setString(2,serviceprovider);
                pst.setString(3,state);
                pst.setString(4,location);
                pst.setString(5,place);
                 pst.setString(6,pincode);
                pst.setString(7,event);
                pst.setString(8,otherservice);
               
                 pst.setString(9,date);
                 pst.setString(10,name);
                  pst.setString(11,useremail);
                 pst.setString(12,usercontact);
                 pst.setString(13,contactno);
                  
                pst.executeUpdate();
               response.sendRedirect("pay.jsp");
                   
      %>
      
    </body>
</html>
