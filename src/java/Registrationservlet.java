/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class Registrationservlet extends HttpServlet {

    
     @Override
     public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       String rid = request.getParameter("rid"); 
        String username = request.getParameter("registername"); 
        String emailid = request.getParameter("registeremailid"); 
        String phoneno = request.getParameter("rcontact"); 
        String user=request.getParameter("dropdown");    
        String userpassword=request.getParameter("pwd1");
        
       try{
          

             
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                PreparedStatement pst = con.prepareStatement("insert into register values(?,?,?,?,?,?)");
                
                pst.setString(1,username);
                pst.setString(2,emailid);
                pst.setString(3,phoneno);
                pst.setString(4,user);
                pst.setString(5,userpassword);
                pst.setString(6,rid);
                int row = pst.executeUpdate();
            
               out.println("<html>");
            out.println("<head>");
             out.println("<style>h2{color:white;}");
            out.println("a{color:white;text-decoration:none}</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>"+"You are registered successfully!"+"</h2>");
             out.println("<h2><a href='index.html'> Login to explore!!</a></h2>");
            out.println("</body>");
            out.println("</html>");
              RequestDispatcher rd=request.getRequestDispatcher("/SignUp.jsp");  
            rd.include(request, response);  
      }
         catch(Exception e)
            {
                out.println(e);
            }
    
        
     }
}
     
