/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


/**
 *
 * @author Mehak
 */
public class NewClass {
    
    public static void main(String args[]){
         try{
     Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacgpacalc","root","");
            Statement stmt=con.createStatement();
            String insrec=String.format("Insert into registeration (username,firstname,lastname,age,email,collegename,password) VALUES (\"%s\",\"%s\",\"%s\",%d,\"%s\",\"%s\",\"%s\");","UnME","fname","lname",34,"email","college","pword");
            System.out.println(insrec);
            stmt.executeUpdate(insrec);
            
        } catch(Exception e){
            System.out.println("Error:"+e.getMessage());
        }
    }
     
    
}
