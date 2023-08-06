<%-- 
    Document   : makeupdb
    Created on : 6 Apr, 2022, 10:23:35 PM
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
                  String mname = request.getParameter("makeupartist"); 
                  String mobno = request.getParameter("mmobno");
                  String price = request.getParameter("mprice");  
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into makeup_artist values(?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(ma_id)+1 from makeup_artist");
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
                pst.setString(2,mname);
                pst.setString(3,mobno);
                 pst.setString(4,price);         
                pst.executeUpdate();
               response.sendRedirect("ExtraService.jsp");
      %>
    </body>
</html>
