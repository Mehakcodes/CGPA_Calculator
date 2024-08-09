
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;


public class register extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
       
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        PrintWriter out=response.getWriter();
        String uname=request.getParameter("username");
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        int age=Integer.parseInt(request.getParameter("age"));
        String college=request.getParameter("college");
        String email=request.getParameter("email");
        String pword=request.getParameter("password");
        
        try{
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacgpacalc","root","");
            Statement stmt=con.createStatement();
            String insrec=String.format("Insert into registeration (username,firstname,lastname,age,email,collegename,password) values(\"%s\",\"%s\",\"%s\",%d,\"%s\",\"%s\",\"%s\");",uname,fname,lname,age,email,college,pword);
            stmt.executeUpdate(insrec);
            response.sendRedirect("login.jsp");
            
        } catch(Exception e){
            System.out.println("Error:"+e.getMessage());
        }
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
