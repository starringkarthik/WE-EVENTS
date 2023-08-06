<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Add Service</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
            <style>
                 .bg-img {
                 margin-left:100px;
                 background-position: center;
                 background-repeat: no-repeat;
                 background-size: cover;
                 position: relative;
             }
/*             .container {
                 position: absolute;
                 margin: 40px;
                 width: auto;
             }*/
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
.er{margin-top:-350px}
                body{background-image: linear-gradient(whitesmoke, goldenrod);}
                h1{color:#ffffff;}
                table.staffholder{color:#ffffff;background-color: #daa230;padding:20px;border-radius: 2em;}
                .staffbtn{background-color:#f44336; color:#ffffff;border-color:#cc00cc;border-radius: 2em;cursor:pointer;}
                .staffclear{background-color:#f44336;; color:#ffffff;border-color:#cc00cc;border-radius: 2em;cursor:pointer;}
                .sdata{background-color:#daa230; color:#ffffff;}
                .stdata{background-color:#8b0000; color:#ffffff;}
            </style>
            <body>      <div  class="bg-img">
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
<div><table><tr><td><a href="admin.jsp"> << Back </a></td><td><a href="TrackCust.jsp"> Next>> </a></td></tr></div>
        <h1>Add Service</h1><br>
        <form name="addform" action="eventdb.jsp" method="post">         
            <table cellspacing="5px" class="staffholder">
                <tr><td></td><td><input type="text" name="eventid" value="<%   
                    ResultSet rs=null;
                       
                        try
                        { 
                             Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                             Statement sql=con.createStatement();
                             String eventid="select max(eventid)+1 from event";
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
             <form action="ExtraService.jsp">   
                  <tr>  <td>Service Provider Name:</td><td><input type="text" name="providername"  required></td></tr>
                  <tr>  <td>State:</td>  <td> <select name="state">
                        <option name="Maharashtra">Maharashtra</option>
                         <option name="Tamilnadu">Tamilnadu</option>
                    </select></td></tr>
                   <tr>  <td>Location:</td><td><input type="text" name="location"  required></td></tr>
                   <tr>  <td>Place:</td><td><input type="text" name="place"  required></td></tr>
                   <tr>  <td>Pincode:</td><td><input type="text" name="pincode"  required></td></tr>
                    <tr>  <td>Contact No:</td><td><input type="text" name="contactno"  required></td></tr>
                <tr>  <td>Event:</td><td> <select name="event">
                        <option name="Birthday Party">Birthday Party</option>
                         <option name="Wedding">Wedding</option>
                          <option name="Baby Shower">Baby Shower</option>
                           <option name="Reception">Reception</option>
                           <option name="Engagement">Engagement</option>
                    </select></td></tr>
                <tr><td><h3>Services Provided:</h3></td><td><h3>Price</h3></td></tr><tr><td style="color:red">*Please tick the services before entering prices.</td></tr>
                   <tr> <td> <input type="checkbox" name="extraservices" value="Hairstylist">Hairstylist</td><td><input type="number" id="hprice" name="hprice" value="0" onblur="reSum();"></td></tr>
                <tr><td><input type="checkbox" name="extraservices" value="MakeupArtist">MakeupArtist</td><td><input type="number" id="maprice" name="maprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="Cook">Cook</td><td><input type="number" name="cprice" id="cprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="Mandap Decorator">Mandap Decorator</td><td><input type="number" name="mdprice" id="mdprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="HallDecorator">Hall Decorator</td><td><input type="number" name="hdprice" id="hdprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="PujaPerformer">Puja Performer</td><td><input type="number" name="pprice" id="pprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="Food Catering">Food Catering</td><td><input type="number" name="fcprice"  id="fcprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="Photography">Photography</td><td><input type="number" name="phprice"  id="phprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td><input type="checkbox" name="extraservices" value="Volunteer">Volunteer</td><td><input type="number" name="vprice" id="vprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td>Other services:</td><td><input type="text" name="otherservice"></td><td>Rs.<input type="number" name="osprice" id="osprice" value="0" onblur="reSum();"></td></tr>
                 <tr><td>Price In Total:</td><td>Rs.<input type="text" name="price" id="Sum" readonly></td></tr>
                    <tr><td><input type="submit" class="staffbtn" name="submit" value="Add Service"></td>
                    <td><input type="reset" class="staffclear" name="reset" value="CLEAR"></td></tr>
                    <script>
                        function reSum()
        {
                                    var num1 = parseInt(document.getElementById("hprice").value);
                                    var num2 = parseInt(document.getElementById("maprice").value);
                                    var num3 = parseInt(document.getElementById("cprice").value);
                                    var num4 = parseInt(document.getElementById("mdprice").value);
                                    var num5 = parseInt(document.getElementById("hdprice").value);
                                    var num6 = parseInt(document.getElementById("pprice").value);
                                    var num7 = parseInt(document.getElementById("fcprice").value);
                                    var num8 = parseInt(document.getElementById("phprice").value);
                                    var num9 = parseInt(document.getElementById("vprice").value);
                                    var num10 = parseInt(document.getElementById("osprice").value);
                                    document.getElementById("Sum").value = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9 + num10;
                                    }
                    </script>
                
        </table>
        </form>
         <h1>My Registered Service Details</h1>
        <table border="2px" cellpadding="5px" ><tr class="stdata">
                 <td></td>
            <td>SeviceProvider</td>
            <td>State</td>
           <td>Location</td>
            <td>Place</td> 
            <td>Pincode</td> 
           <td>Event</td>
           <td>Extra Service</td>
           <td>Other Service</td>
           <td>Price</td>
           <td>Contact No</td>
           <td>Remove</td>
        </tr>
         <%   
             try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                Statement stmt=con.createStatement();
                String query="select * from event";
                 ResultSet rst=stmt.executeQuery(query);
                while(rst.next()){
            %>
            <form action="eventdel.jsp">
            <tr class="sdata">
                <td><input type="text" name="sid" value="<%=rst.getString("eventid") %>" readonly hidden></td> 
            <td><%=rst.getString("serviceprovider") %></td>
            <td><%=rst.getString("state") %></td>
            <td><%=rst.getString("location") %></td>
            <td><%=rst.getString("place") %></td>
            <td><%=rst.getString("pincode") %></td>
            <td><%=rst.getString("event") %></td>
            <td><%=rst.getString("extraservices") %></td>
            <td><%=rst.getString("otherservice") %></td>
            <td><%=rst.getString("price") %></td>
            <td><%=rst.getString("contactno") %></td>
            <td><input type="submit" value="delete"></td></form>
           </tr>
        <%
            }}
             catch(Exception e){out.println(e);}
             %>
         </table>
       
    </body>
</html>
