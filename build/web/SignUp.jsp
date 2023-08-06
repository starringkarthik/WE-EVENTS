<%-- 
    Document   : newjsp
    Created on : 26 Dec, 2021, 8:16:40 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <style>
            body{ background-image: url(2.png); background-size: cover;}
            div{margin:40px; opacity: 0.9; }
            input,select{size:10px;border:3px solid gold;border-radius: 3px;width:500px;height:30px}
            .registertemp{color:white;font-family:cursive;background-color: goldenrod;border-radius: 4px;padding: 15px;font-size:20px}
            button{background-color:gold;border-radius: 4px;font-size: 30px;font-family: cursive;border:3px solid white;cursor:pointer;color:white}
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
        <div> <form action="Registrationservlet">
      <table class="registertemp">
         <tr> <td><input type="text" name="rid"value="<%   
                    ResultSet rs=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String rid="select max(rid)+1 from register";
                             rs= sql.executeQuery(rid);
                             while(rs.next())
                             {
                                 out.println(rs.getInt(1));
                             }
                              }
                  
            catch(Exception e)
   {
      out.println(e);
   }  %>" readonly hidden ></td></tr>
      <tr><td>  Create Username:</td><td> <input type="text" name="registername" placeholder="Username" required></td></tr>
       <tr><td>  Enter email ID:  </td><td> <input type="text" name="registeremailid" placeholder="abc@mail.com" required></td></tr>
       <tr><td>  Contact Number:  </td><td><input type="text" name="rcontact" placeholder="10-digits-only" required></td></tr>
       <tr><td>  Enter Your Password: </td><td> <input type="text" name="pwd1" required></td></tr>
       <tr><td>  Re-type your password: </td><td> <input type="text" name="pwd2" required></td></tr>
       <tr><td>Role:</td><td>
        <select name="dropdown">
            <option name="ruser" value="User">User</option>
             <option name="rmanager" value="Event Manager">Event Manager/Service Provider</option>
        </select></td></table>
<p> <button>Sign Up for WE-Events</button></p>
                </form></font></div>
    </body>
</html>
