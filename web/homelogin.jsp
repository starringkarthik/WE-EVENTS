<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WE-Events</title>
        <style>
             body {
                 background-image: url("1.png");
                 background-size: cover;
             }
             .bg-img {
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
   

/*        Slideshow*/
               .mySlides {display: none; height: 300px; width: 10px}
               .slideshow{margin-left: 500px; margin-top: 180px; width:500px;}
        .topnav2 {
                 overflow: hidden;
                 width: 500px;  
                 background-color: #FF3352 ;
             }
             .topnav2 a {
                 float: top;
                 color: #f2f2f2;
                 text-align: center;
                 margin: 20px;
                 padding: 4px 4px;
                 display: inline-block;
                 text-decoration: none;
                 font-size: 21px;
        </style>
      
    </head>
    <body>     
        <div class ="title">
            <h1 style=color:gold;font-family:courier;font-size:50px;><em>WE-EVENTS</em></h1>
            <h2 style=color:gold;font-family:courier;font-size:40px;><em>Let's Celebrate Togetherness...</em></h2>
            <a class="book" href="#updates">Don't have a good day, Have a great day!</a>
        </div>
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
            </tr></table>
            <div class="slideshow" >
                <img class="mySlides" src="banner1.jpg" style="width:100%" >
            <img class="mySlides" src="banner2.jpg" style="width:100%">
            <img class="mySlides" src="banner3.jpg" style="width:100%">
            <img class="mySlides" src="BG1.jpg" style="width:100%">
            <div class="topnav2"><a href="book.jsp">Book</a></div>
          </div>
        </div>
        
           <script>
      var myIndex = 0;
        carousel();

        function carousel() {
          var i;
          var x = document.getElementsByClassName("mySlides");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";  
          }
          myIndex++;
          if (myIndex > x.length) {myIndex = 1}    
          x[myIndex-1].style.display = "block";  
          setTimeout(carousel, 500); // Change image every 2 seconds
        }
        </script>

        <div class ="copyright">
            <h2 style=color:black;font-size:20px;><strong>&nbsp&nbsp&nbsp � 2022 WE-Events | All Rights Reserved.</strong></h2>
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