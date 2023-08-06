<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Service</title>
    </head>
    <body>
      <%         ResultSet cs=null;
                 String eventid=request.getParameter("eventid");
                 int c=Integer.parseInt(eventid);
                  String serviceprovider = request.getParameter("providername"); 
                  String state = request.getParameter("state");
                  String location = request.getParameter("location");
                 String place = request.getParameter("place"); 
                 String pincode = request.getParameter("pincode");
                 String contactno= request.getParameter("contactno");
                  String event = request.getParameter("event");  
                  String otherservice= request.getParameter("otherservice");
                  String price = request.getParameter("price");  
                  String hprice=request.getParameter("hprice");  
                  String maprice = request.getParameter("maprice");  
                  String cprice=request.getParameter("cprice");  
                  String mdprice = request.getParameter("mdprice");  
                  String hdprice=request.getParameter("hdprice");  
                  String pprice = request.getParameter("pprice");  
                  String fcprice=request.getParameter("fcprice");  
                   String phprice=request.getParameter("hdprice");  
                  String vprice = request.getParameter("pprice");  
                  String osprice=request.getParameter("fcprice");  
                  
                  String es="";
                    String extras[]=request.getParameterValues("extraservices");
                    for(int i=0;i<extras.length;i++){
                        es+=extras[i]+" ";}
                
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                 PreparedStatement pst=con.prepareStatement("insert into event values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                 PreparedStatement pst1=con.prepareStatement("select max(eventid)+1 from event");
                  cs=pst1.executeQuery();
                 if(c==0)
                {
                  c=1;
                 pst.setInt(1,c);
                }
                 else
                 {
                 while(cs.next())
                 {
                 pst.setInt(1,cs.getInt(1));
                 }
                }
                pst.setString(2,serviceprovider);
                pst.setString(3,state);
                pst.setString(4,location);
                pst.setString(5,place);
                 pst.setString(6,pincode);
                pst.setString(7,contactno);
                pst.setString(8,event);
                 pst.setString(9,es);
                 pst.setString(10,otherservice);
                 pst.setString(11,price);
                 pst.setString(12,hprice);
                pst.setString(13,maprice);
                pst.setString(14,cprice);
                pst.setString(15,mdprice);
                 pst.setString(16,hdprice);
                pst.setString(17,pprice);
                pst.setString(18,fcprice);
                 pst.setString(19,phprice);
                 pst.setString(20,vprice);
                 pst.setString(21,osprice);

                  
                pst.executeUpdate();
               response.sendRedirect("AddEvent.jsp");
      %>       
    </body>
</html>
