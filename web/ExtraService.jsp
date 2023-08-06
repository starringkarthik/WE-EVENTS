<%-- 
    Document   : ExtraService
    Created on : 5 Apr, 2022, 9:42:06 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Services Provided</title>
        <style>
            body{background-image: url("image1.jpg")}
            li{
background-image: linear-gradient(whitesmoke, goldenrod);
            color:#000000;
padding: 10px;
font-family:cursive;
font-size:20px;
}
input{ 
color:goldenrod;
height:30px;
width:500px;
border-color:#0099cc
}

        </style>
    </head>
    <body>
        <ul type="square">
            <form action="eventdb.jsp">
            <li>Hairstylist
            <table>
                 <tr><td></td><td><input type="text" name="hid" value="<%   
                    ResultSet rs=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String hid="select max(hairstylistid)+1 from hairstylist";
                             rs= sql.executeQuery(hid);
                             while(rs.next())
                             {
                                 out.println(rs.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="hairstylistname" required></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="hmobno" required></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="hprice" required></td></tr>
                 <tr><td>FKEY</td><td><input type="text" name="fkey" value="<%=request.getParameter("eventid")%>" required></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
<!--            MakeupArtist-->
             <form action="makeupdb.jsp"> 
             <li>MakeupArtist
            <table>
                <tr><td></td><td><input type="text" name="mid" value="<%   
                    ResultSet rst=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String mid="select max(ma_id)+1 from makeup_artist";
                             rst= sql.executeQuery(mid);
                             while(rst.next())
                             {
                                 out.println(rst.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="makeupartist"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="mmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="mprice"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
<!--  Cook          -->
             <form action="cook.jsp"> 
             <li>Cook
            <table>
                <tr><td></td><td><input type="text" name="cid" value="<%   
                    ResultSet res=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String cid="select max(cid)+1 from cook";
                             res= sql.executeQuery(cid);
                             while(res.next())
                             {
                                 out.println(res.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="Cook"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="mobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="price"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
            
<!--          Mandap Decorator  -->
 <form action="mandapdb.jsp"> 
             <li>Mandap Decorator
            <table>
                <tr><td></td><td><input type="text" name="mdid" value="<%   
                    ResultSet rss=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String mdid="select max(mdid)+1 from mandap";
                             rss= sql.executeQuery(mdid);
                             while(rss.next())
                             {
                                 out.println(rss.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="mandapdec"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="mdmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="mdprice"></td></tr>
                <tr><td><input type="text" name="osprice"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
<!--           Food Catering -->
 <form action="foodcaterdb.jsp"> 
            <li>Food Catering
            <table>
                <tr><td></td><td><input type="text" name="fcid" value="<%   
                    ResultSet rus=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String fcid="select max(fcid)+1 from foodcater";
                             rus= sql.executeQuery(fcid);
                             while(rus.next())
                             {
                                 out.println(rus.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="FoodCatering"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="fcmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="fcprice"></td></tr>
                <tr><td><input type="text" name="osprice"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
<!--   Photography         -->
 <form action="photographdb.jsp"> 
            <li>Photography
            <table>
                <tr><td></td><td><input type="text" name="pid" value="<%   
                    ResultSet rees=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String pid="select max(pid)+1 from photography";
                             rees= sql.executeQuery(pid);
                             while(rees.next())
                             {
                                 out.println(rees.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="Photography"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="pmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="pprice"></td></tr>
                <tr><td><input type="text" name="osprice"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
<!--            Volunteer-->
 <form action="volunteerdb.jsp"> 
            <li>Volunteer
            <table>
                <tr><td></td><td><input type="text" name="vid" value="<%   
                    ResultSet rsv=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String vid="select max(vid)+1 from volunteer";
                             rsv= sql.executeQuery(vid);
                             while(rsv.next())
                             {
                                 out.println(rsv.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="Volunteer"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="vmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="vprice"></td></tr>
                <tr><td><input type="text" name="osprice"></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form><br>
            
            
<!--           Other service-->
   <form action="extradb.jsp"> 
            <li>Extra Service
            <table>
                <tr><td></td><td><input type="text" name="esid" value="<%   
                    ResultSet rso=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String esid="select max(esid)+1 from otherservice";
                             rso= sql.executeQuery(esid);
                             while(rso.next())
                             {
                                 out.println(rso.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
}  %>" readonly hidden></td></tr>
                <tr><td>Name</td><td><input type="text" name="os"></td></tr>
                <tr><td>Mobile No</td><td><input type="text" name="osmobno"></td></tr>
                <tr><td>Estimated Cost</td><td><input type="text" name="osprice"></td></tr>
                <tr><td><input type="text" name="fkey" value=""></td></tr>
                <tr><td></td><td><input type="submit" value="submit"></td></tr>
            </table></li></form>
           
        </ul>
    </body>
</html>
