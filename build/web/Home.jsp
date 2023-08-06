<%-- 
    Document   : Home
    Created on : 19 Jan, 2022, 5:41:00 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Events</title>
        <style>
             body {
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
                 background-color: #FF3352 ;
             }
             .topnav a {
                 float: top;
                 color: #f2f2f2;
                 text-align: center;
                 margin: 20px;
                 padding: 18px 20px;
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
             
             .book {
                 display: block;
                 width: 100%;
                 border: none;
                 background-color: red;
                 opacity: 0.5;
                 color: white;
                 padding: 130px 10px;
                 font-size: 50px;
                 font-style: italic;
                 cursor: pointer;
                 text-align: center;
                 text-decoration: none;
             }
             .book:hover {
                 background-color: #ddd;
                 color: black;
             }
        </style>
    </head>
    <body>     
        <div class ="title">
            <h1 style=color:gold;font-family:courier;font-size:50px;><em>E-EVENTS</em></h1>
            <h2 style=color:gold;font-family:courier;font-size:40px;><em>Let's Celebrate Togetherness...</em></h2>
            <a class="book" href="#updates">No Notifications/Updates available!</a>
        </div>
        
        <div class="bg-img">
            <div class="container">
                <div class="topnav">  
                    <a href="#Home">Home</a>
                    <a href="#AboutUs">About Us</a>
                    <a href="#ContactUs">Contact Us</a>
                    <a href="#Privacy">Privacy</a>
                    <a href="#Help">Help</a>
                    <a href="#">Login</a>
                </div>                              
            </div>
        </div> 
        
        <div class ="copyright">
            <h2 style=color:black;font-size:20px;><strong>&nbsp&nbsp&nbsp © 2022 E-Events | All Rights Reserved.</strong></h2>
        </div>
        
        <div class="footer">
            <div class="holder">
                <div class="button">                   
                    <a href="#Privacy">Privacy</a>
                    <a href="#Terms">Terms</a>
                </div>
            </div>   
        </div>
    </body>
</html>