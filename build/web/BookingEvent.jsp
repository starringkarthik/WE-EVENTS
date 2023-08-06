<%-- 
    Document   : BookingEvent
    Created on : 6 Apr, 2022, 12:00:55 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Your Event</title>
        <style>
              .bg-img {
               
                 margin-left:100px;
                 background-position: center;
                 background-repeat: no-repeat;
                 background-size: cover;
                 position: relative;
             }
             .container {
                 position: absolute;
                 margin: 40px;
                 width: auto;
             }
             .topnav {
                 overflow: hidden;
                 width: 160px;  
                 background-color: #FF3352 ;
             }
             .topnav a {
                 float: top;
                 color: #f2f2f2;
                 text-align: center;
                 margin: 20px;
                 padding: 4px 4px;
                 display: inline-block;
                 text-decoration: none;
                 font-size: 21px;
             }
             .topnav a:hover{
                 background-color: #ddd;
                 color: black;
             }
                 .dropbtn {
                    height:100px;
width:100px;
                    background-image: url('user.png');
background-position:center; 
                    background-repeat: no-repeat;
background-size: 50px;
                    border-radius:50px; 
}
  
        .dropdown {
            position: relative;
            display: inline-block;
        }
  
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 
                0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
  
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
  
        .dropdown-content a:hover {
            background-color: gold;
        }
  
        .dropdown:hover .dropdown-content {
            display: block;
        }
  
        .dropdown:hover .dropbtn {
            background-color:red;
        }
        .table-styling{
border-collapse: collapse;
}
            .u{
border:none;
width:300px
}
            .filldetails{
margin-top: 100px; 
background-image: linear-gradient(whitesmoke, goldenrod);
color:#ff6600;
padding: 50px;
font-family:cursive;
font-size:30px;
cursor:pointer;
}
input{width:300px}
            body{
background-image:url("image1.jpg")
}
            
        </style>
    </head>
    <body>
         <div  class="bg-img">
        <table class='table-styling'>
            <tr class="container">
                <td class="topnav"> <a href="homelogin.jsp">Home</a></td>
                 <td class="topnav"> <a href="aboutus.jsp">About Us</a></td>
                  <td class="topnav">    <a href="contactus.jsp">Contact Us</a></td>
                   <td class="topnav">   <a href="privacy.jsp">Privacy</a></td>
                    <td class="topnav"> <a href="faq.jsp">FaQ</a></td>
                   <td class="topnav">   <a href="help.jsp">Help</a></td>
                    <td>  <span class="dropdown">
                    <button class="dropbtn"></button>  
                        <span class="dropdown-content">
                       <a href="logout.jsp">LogOut</a>
                      
                        </span>
                        </span>  </td>
                    </div>
</tr></table></div>
<div class="filldetails">
        <h1>Fill details</h1>
        <form action="bookdb.jsp">
        <table cellspacing="5px" class="staffholder">
                <tr><td></td><td><input type="text" name="bookid" value="<%   
                    ResultSet rs=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String eventid="select max(bookid)+1 from book";
                             rs= sql.executeQuery(eventid);
                             while(rs.next())
                             {
                                 out.println(rs.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
   }  %>" readonly hidden></td></tr>
               
                  <tr>  <td>Service Provider Name:</td><td><input type="text" class="u" name="t1" value="<%=request.getParameter("sp")%>" readonly>
                  <tr>  <td>State:</td><td><input type="text" class="u" name="state" value="<%=request.getParameter("state")%>" readonly></td></tr>
                   <tr>  <td>Location:</td><td><input type="text" class="u" name="location" value="<%=request.getParameter("loc")%>" readonly></td></tr>
                   <tr>  <td>Place:</td><td><input type="text" class="u" name="place" value="<%=request.getParameter("place")%>" readonly></td></tr>
                   <tr>  <td>Pincode:</td><td><input type="text" class="u" name="pincode" value="<%=request.getParameter("pincode")%>" readonly></td></tr>
                   <tr>  <td>Booking for the Event:</td><td><input type="text" class="u" name="event" value="<%=request.getParameter("event")%>" readonly></td></tr>
                   <tr>  <td>Services they provide:</td><td><input type="text" class="u" name="es" value="<%=request.getParameter("extraservice")+request.getParameter("otherservice")%>" readonly></td>
                   <tr>  <td>Services you can exclude:</td><td><input type="text" name="excludedservice" placeholder="Price may vary when you exclude"></td></tr>

                 
                   <tr><td><input type="text" name="contactno" value="<%=request.getParameter("contactno")%>" readonly hidden></td> </tr>
                    <tr><td>Fix your Date:</td><td><input type="date" name="date"></td> </tr>
                    <tr><td>Your Name:</td><td><input type="text" name="fullname" required></td> </tr>
                     <tr><td>Emailid:</td><td><input type="text" name="useremail" required></td> </tr>
                     <tr><td>ContactNo:</td><td><input type="text" name="usercontact" required></td> </tr>
                    <tr> <td><input type="submit" class="staffbtn" name="submit" value="Book"></td>
                    <td><input type="reset" class="staffclear" name="reset" value="CLEAR"></td></tr>
                </table>
                
        </form>
</div>                 
    </body>
</html>
