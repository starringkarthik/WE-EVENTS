<%-- 
    Document   : checkout
    Created on : 6 Apr, 2022, 10:58:01 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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

            body{
                   background-image: linear-gradient(whitesmoke, goldenrod);
            color:#ffffff;
padding: 50px;
font-family:cursive;
font-size:30px;
cursor:pointer;
            }
            h1{margin-top: -300px; }
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
        <h1> You have booked successfully!!For further information we'll connect you shortly!</h1>
        <a href="book.jsp">Go Back</a>
    </body>
</html>
