<%-- 
    Document   : contactus
    Created on : 3 Mar, 2022, 11:00:36 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style>
            body {
                 background-image: url("5.png");
                 background-size: cover;
             }
             .bg-img {
                 background-image: url("5.png");
                 opacity: 0.5;
                 min-height: 570px;
                 margin-left:500px;
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
                 background-color:goldenrod ;
             }
             .topnav a {
                 float: top;
                 color: #f2f2f2;
                 text-align: center;
                 margin: 20px;
                 padding: 12px 12px;
                 display: inline-block;
                 text-decoration: none;
                 font-size: 21px;
             }
             .topnav a:hover{
                 background-color: #ddd;
                 color: black;
             }
             
             .title {
                 float: left;
                 clear: none; 
                 margin-right: 1070px;
                 position: absolute;
             } 
             
             .footer {
                 background-image: url("BG3.jpg");
                 opacity: 0.5;
                 min-height: 100px;
                 margin-top: 50px;
                 background-position: center;
                 background-repeat: no-repeat;
                 background-size: cover;
                 position: relative;
             }
             .holder {
                 position: absolute;
                 margin: 0px;
                 margin-left: 80%;
                 width: auto;
             }
             .button {
                 overflow: hidden;
                 background-color: #FF3352 ;
             }
             .button a {
                 float: top;
                 color: #f2f2f2;
                 text-align: center;
                 margin: 20px;
                 padding: 18px 25px;
                 display: inline-block;
                 text-decoration: none;
                 font-size: 21px;
             }
             .button a:hover{
                 background-color: #ddd;
                 color: black;
             }
             
             .copyright {
                 float: left;
                 clear: none; 
                 margin-top: 90px;
                 position: absolute
             }
             
                   .dropbtn {
                    height:100px;width:100px;
                    background-image: url('user.png');background-position:center; 
                    background-repeat: no-repeat;background-size: 50px;
                    border-radius:50px; }
  
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
        .table-styling{border-collapse: collapse;}
   
      
        </style>
      
    </head>
    <body>
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
                       <a href="login.jsp">Login</a>
                       <a href="SignUp.jsp">Register Here</a> 
                        </span>
                </span>  </td>
            </tr></table>
        
          
    </body>
</html>
