/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Mehak
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        boolean isValid = false;
         try {
         
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacgpacalc","root","");
            String sql = String.format("SELECT * FROM registeration WHERE username =\"%s\" AND password =\"%s\";",username,password);
            Statement stmt=con.createStatement();
            ResultSet resultSet= stmt.executeQuery(sql);
            if (resultSet.next()) {
                isValid = true;
            }
            
          
        }  catch(Exception e){
            System.out.println("Error:"+e.getMessage());
        }

        if (isValid) {
            response.sendRedirect("calculate.jsp");
        } else {
            
            out.println("<h2>Login Failed!</h2>");
            out.println("<p>Invalid username or password.</p>");
        }
        
    }
        protected boolean validateUser(String username, String password) {
        boolean isValid = false;

        try {
         
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacgpacalc","root","");
            String sql = "SELECT * FROM users WHERE username = \"?\" AND password =\"?\"";
            try (PreparedStatement statement = con.prepareStatement(sql)) {
                statement.setString(1, username);
                statement.setString(2, password);
                ResultSet resultSet= statement.executeQuery();
               
                if (resultSet!=null) {
                        isValid = true;
                    }
                
            }
        }  catch(Exception e){
            System.out.println("Error:"+e.getMessage());
        }

        return isValid;
    
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
