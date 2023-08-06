<%-- 
    Document   : faq
    Created on : 3 Mar, 2022, 10:28:22 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FaQ Time</title>
        <style>  body {
                 background-image: url("BG1.jpg");
                 background-size: cover;
             }
             .bg-img {
                 background-image: url("BG3.jpg");
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
                 background-color: red;
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
   
        .faqcontent{margin-top:160px;margin-left: 40px; color: white;font-family:cursive;background-color: gold; opacity: 0.9;}

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
        
        <div class="faqcontent">
                <h1>QnA</h1>
                <h2>What is we events ?</h2>
                <h3>  we are a online event managemnt website which helps in boooking and managing the event as per needs of a customer</h3>
                  <h2>how to book a event?</h2>
                <h3>  after you login into the website you will have various slides and upcoming offers and event after you click on the type of event you want to book and follow the next steps</h3>
                  <h2>how to be a service provider ?</h2>
                <h3>   on the login or sign in page you will have a option to be a service provider in which you will fill in your details 
          and then our team will verify the things and will email you your login details</h3>
                  <h2>How do I benefit from booking through your portal ?</h2>
                <h3> We can help you get the best negotiated rates for the venues.
        We are a one stop portal for all event related bookings. Our
        dedicated team can assist you with booking a perfect venue
        as well as arranging for ancillary services like caterers, artists
        and themes for your event.</h3>
                  <h2>What kind of events do you cater?</h2>
                  <h3>We help in booking venues for events ranging from social
        gatherings like weddings, birthday parties, anniversaries, etc.
        to corporate events like business meetings, conferences and
        the like.</h3>
                  <h2>Are there any additional charges for booking?</h2>
                  <h3>No, there are no additional charges; our services are totally
        free.</h3>
        </div>
        
           <div class ="copyright">
            <h2 style=color:black;font-size:20px;><strong>&nbsp&nbsp&nbsp © 2022 WE-Events | All Rights Reserved.</strong></h2>
        </div>
        
        <div class="footer">
            <div class="holder">
                <div class="button">                   
                    <a href="privacy.jsp">Privacy</a>
                    <a href="terms.jsp">Terms</a>
                </div>
            </div>   
        </div>
    </body>
</html>
