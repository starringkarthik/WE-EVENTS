<%-- 
    Document   : privacy
    Created on : 4 Mar, 2022, 6:51:26 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Privacy</title>
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
.p{margin-top: 250px}
            .u{
border:none;
width:300px
}
body{background-image: linear-gradient(whitesmoke, goldenrod);
font-family: cursive;color:#ff6600}
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
</tr></table></div><div class="p">
        <h3>This privacy policy applies to weevents.com and covers the site www.weevents.com and all site for the we events website 
. because we want to demonstrate our commitment to our users privacy , we disclose the following information


<ol><li> what personal information we events collect </li>
<li> the legal basis for collectiong personal information</li>
<li>  what personal information third parties collect through the website</li>
<li>  what organization collects the information</li>
<li>  how we events uses the information</li>
<li>  with whom weevents may share user information</li>
<li>  what choices are available to users regarding collection , use and distribution of the information</li>
<li> what type of security procedures are in place to protect the loss , misuse or alteration of information under weevents control</li> 
<li> how users can correct any inaccurancies in the information</li></ol></h3></div>
    </body>
</html>
