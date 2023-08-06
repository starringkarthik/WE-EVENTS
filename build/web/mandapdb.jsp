<%-- 
    Document   : mandapdb
    Created on : 6 Apr, 2022, 10:24:13 PM
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
                 String mdid=request.getParameter("mdid");
                 int c=Integer.parseInt(mdid);
                  String mdname = request.getParameter("mandapdec"); 
                  String mdmobno = request.getParameter("mdmobno");
                  String mdprice = request.getParameter("mdprice");  
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into mandap values(?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(mdid)+1 from mandap");
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
                pst.setString(2,mdname);
                pst.setString(3,mdmobno);
                 pst.setString(4,mdprice);         
                pst.executeUpdate();
               response.sendRedirect("ExtraService.jsp");
      %>
    </body>
</html>
