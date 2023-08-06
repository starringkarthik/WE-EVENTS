<%-- 
    Document   : TrackCust
    Created on : 7 Apr, 2022, 1:03:20 AM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Track</title>
        <style>
                  .bg-img {
                 min-height: 570px;
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
                 background-color: goldenrod ;
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
.cust{
margin-top:-350px
}
  body{
background-image: url("image1.jpg");
background-size: cover;
}
  .custtabledesign{ 
background-image: linear-gradient(whitesmoke, goldenrod);
font-family:cursive;
font-size: 20px;
color:#660066;
}
  h1{
      color:#660066
  }
        </style>
    </head>
    <body>
        <div  class="bg-img">
        <table class='table-styling'>
            <tr class="container">
                <td class="topnav"> <a href="index.html">Home</a></td>
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
<div class="cust">
            <h1>Customer Details</h1>
        <table border="1px" cellpadding="5px" class="custtabledesign" ><tr class="stdata">
            
           <td>Name</td>
           <td>Emailid</td>
           <td>ContactNo</td>
           <td>Date</td>
       
        </tr>
         <%   
             try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                Statement stmt=con.createStatement();
                String query="select * from book";
                 ResultSet rst=stmt.executeQuery(query);
                while(rst.next()){
            %>
            
            <tr class="sdata">
               
            
            <td><%=rst.getString("name") %></td>
            <td><%=rst.getString("useremail") %></td>
            <td><%=rst.getString("usercontact") %></td>
             <td><%=rst.getString("date") %></td>
              
         
           </tr>
        <%
            }}
             catch(Exception e){out.println(e);}
             %>
        </table></div>
    </body>
</html>
