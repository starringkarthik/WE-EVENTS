<%-- 
    Document   : cookdb
    Created on : 6 Apr, 2022, 10:23:55 PM
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
                 String cid=request.getParameter("cid");
                 int c=Integer.parseInt(cid);
                  String cname = request.getParameter("Cook"); 
                  String cmobno = request.getParameter("cmobno");
                  String cprice = request.getParameter("cprice");  
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into cook values(?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(cid)+1 from cook");
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
                pst.setString(2,cname);
                pst.setString(3,cmobno);
                 pst.setString(4,cprice);         
                pst.executeUpdate();
               response.sendRedirect("ExtraService.jsp");
      %>
    </body>
</html>
