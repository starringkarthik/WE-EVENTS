/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class LoginServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
            String loginas=request.getParameter("role");
            String loginid=request.getParameter("username");
            String password=request.getParameter("password");
             String dbUsername;
             String dbPassword;
              String dbUser;
               String uUsername;
             String uPassword;
              String uUser;
       try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?autoReconnect=true&useSSL=false","root","Karthik3!");
                Statement stmt=con.createStatement();
                String query="select username,password,user from register";
                stmt.executeQuery(query);
                ResultSet rs=stmt.getResultSet();
                    while(rs.next()){
                         dbUsername=rs.getString("username");
                         dbPassword=rs.getString("password");
                         dbUser=rs.getString("user");
                         
                         uUsername=rs.getString("username");
                         uPassword=rs.getString("password");
                         uUser=rs.getString("user");
       if(loginid.equals(dbUsername)&&password.equals(dbPassword)&&loginas.equals("Event Manager"))
       {
           response.sendRedirect("admin.jsp");
         }
       else if(loginid.equals(uUsername)&&password.equals(uPassword)&&uUser.equals("User"))
       {response.sendRedirect("homelogin.jsp");
       }
         else{
            out.println("<html>");
            out.println("<head>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h4>"+"Sorry LoginID or Password Error!"+"</h4>");
            out.println("<a href='login.jsp'>Back to Login Page</a>");
            out.println("</body>");
            out.println("</html>");
               }    
                
                    }
       }
         
        catch(ClassNotFoundException | SQLException e)
            {
                out.println(e);
            } 
    
    }
}

