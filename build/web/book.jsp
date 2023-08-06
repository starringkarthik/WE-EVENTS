<%-- 
    Document   : contactus
    Created on : 3 Mar, 2022, 11:00:36 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book</title>
        <style>
            body {
                 background-image: url("image1.jpg");
                 background-size: cover;
             }
             .bg-img {
                 background-image: url("3.png");
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
   
      .book-form{
background-color:#330033;
color:#ffffff;
      margin-top:300px
}
      
      .decoratesearch{   
background-image: linear-gradient(whitesmoke, goldenrod);
            color:#ffffff;
        padding: 50px;
        font-family:cursive;
        font-size:15px;
}
      input{ 
background-color: transparent;
border:none;
font-family:cursive; 
color:#ffffff;
font-size:15px; 
}
      .book-btn{
          background-color:#ff6633;border-radius:5px;border-color:goldenrod;
             padding:10px;cursor: pointer
      }
        </style>
      
    </head>
    <body>
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
                       <a href="logout.jsp">Logout</a>
                     
                        </span>
                </span>  </td>
            </tr></table>
      
            <form action="book.jsp">
              <table class="book-form">
            <tr>
                <td>Select Event Date:</td>  <td><input type="date"></td>
           
            <script>
            var subjectObject = {
  "Maharashtra": {
    "Mumbai": ["Bandra", "Churchgate", "Airoli", "Goregaon"],
    "Pune": ["Shaniwar Wada", "Sinhagad", "Banquet hall", "Aga hall"],
    "Thane": ["Godbhandar", "Kamgar hall", "Meera Estate", "Regina Hall"]    
  },
   "TamilNadu": {
    "Karur": ["Maha Hall", "Priya Hall", "Nehru Hall", "Zeema Studio"],
    "Tirunelveli": ["Nikki Banquet", "Royal Weds", "Niharika hall", "Raisha Royal"],
    "Kanyakumari": ["Matha Mahal", "Nagercoil", "Rajangamangalam", "DeivaSambodu"]    
  }}
window.onload = function() {
  var subjectSel = document.getElementById("state");
  var topicSel = document.getElementById("location");
  var chapterSel = document.getElementById("venue");
  for (var x in subjectObject) {
    subjectSel.options[subjectSel.options.length] = new Option(x, x);
  }
  subjectSel.onchange = function() {
    //empty Chapters- and Topics- dropdowns
    chapterSel.length = 1;
    topicSel.length = 1;
    //display correct values
    for (var y in subjectObject[this.value]) {
      topicSel.options[topicSel.options.length] = new Option(y, y);
    }
  }
  topicSel.onchange = function() {
    //empty Chapters dropdown
    chapterSel.length = 1;
    //display correct values
    var z = subjectObject[subjectSel.value][this.value];
    for (var i = 0; i < z.length; i++) {
      chapterSel.options[chapterSel.options.length] = new Option(z[i], z[i]);
    }
  }
}
        </script>
          
                <td>Select Event :</td>  <td>
                    <select name="event">
                        <option name="Birthday Party">Birthday Party</option>
                         <option name="Wedding">Wedding</option>
                          <option name="Baby Shower">Baby Shower</option>
                           <option name="Reception">Reception</option>
                           <option name="Engagement">Engagement</option>
                    </select></td>
            
                 <td>Select State:</td>  <td>
             <select name="state" id="state">
                        <option value="" selected="selected">Choose State</option>      
                    </select></td>
           
           
                 <td>Select Location:</td>  <td>
             <select name="location" id="location">
                <option value="" selected="selected">Choose Location</option>
                    </select></td>
                    <td>Select Venue:</td>  <td>
             <select name="venue" id="venue">
                <option value="" selected="selected">Choose Venue</option>
                    </select></td>
            <td><input type="submit" name="search" value="Search"></td></tr>
        </table>
</form>
 <%   
             try{
               String event=request.getParameter("event");
       String state=request.getParameter("state");
       String location=request.getParameter("location");
//       String venue=request.getParameter("venue");
        String dbEvent;
        String dbState;
         String dbLocation;
//         String dbVenue;
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                Statement stmt=con.createStatement();
                String query="select * from event";
                stmt.executeQuery(query);
                ResultSet rst=stmt.getResultSet();
                    while(rst.next()){
                          dbEvent=rst.getString("event");
                         dbState=rst.getString("state");
                         dbLocation=rst.getString("location");
       if(event.equals(dbEvent)&&state.equals(dbState)&location.equals(dbLocation))
       {
            %>
            <form method="post" action="BookingEvent.jsp">
            <table class="decoratesearch">
                <td><input type="text" name="sp" value="<%=rst.getString("serviceprovider")%>" readonly></td>
            <td><input type="text" name="state" value="<%=rst.getString("state") %>" readonly></td>
            <td><input type="text" name="loc" value="<%=rst.getString("location") %>" readonly></td>
            <td><input type="text" name="place" value="<%=rst.getString("place") %>" readonly></td>
            <td><input type="text" name="pincode" value="<%=rst.getString("pincode") %>" readonly></td>
            <td><input type="text" name="event" value="<%=rst.getString("event") %>" readonly hidden></td>
            <td><input type="text" name="extraservice" value="<%=rst.getString("extraservices") %>" readonly hidden></td>
             <td><input type="text" name="otherservice" value="<%=rst.getString("otherservice") %>" readonly hidden></td>
               <td><input type="text" name="price" value="<%=rst.getString("price") %>" readonly hidden></td>
                <td><input type="text" name="contactno" value="<%=rst.getString("contactno") %>" readonly hidden></td>
            <td><button class="book-btn">Book</button></td>
            </table>
            </form>
               <%
            }}}
             catch(Exception e){out.println(e);}
             %>
    </body>
</html>
