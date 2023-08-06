<%-- 
    Document   : volunteerdb
    Created on : 6 Apr, 2022, 10:25:16 PM
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
                 String hid=request.getParameter("hid");
                 int c=Integer.parseInt(hid);
                  String hname = request.getParameter("hairstylistname"); 
                  String mobno = request.getParameter("hmobno");
                  String price = request.getParameter("hprice");  
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into hairstylist values(?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(hairstylistid)+1 from hairstylist");
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
                pst.setString(2,hname);
                pst.setString(3,mobno);
                 pst.setString(4,price);         
                pst.executeUpdate();
               response.sendRedirect("ExtraService.jsp");
      %>
    </body>
</html>
