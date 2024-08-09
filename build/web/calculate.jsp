<%-- 
    Document   : calculate
    Created on : 21-Apr-2024, 11:25:43 am
    Author     : Mehak
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CGPA Calculator</title>
    </head>
    <body>
        <h1>CGPA Calculator</h1>
    <form action="calculateCGPA.jsp" method="post">
        <label for="subject1Credit">Subject 1 Credit:</label>
        <input type="text" id="subject1Credit" name="subject1Credit">
        <label for="subject1Percentage">Percentage:</label>
        <input type="text" id="subject1Percentage" name="subject1Percentage"><br><br>
        
        <label for="subject2Credit">Subject 2 Credit:</label>
        <input type="text" id="subject2Credit" name="subject2Credit">
        <label for="subject2Percentage">Percentage:</label>
        <input type="text" id="subject2Percentage" name="subject2Percentage"><br><br>
        
        <label for="subject3Credit">Subject 3 Credit:</label>
        <input type="text" id="subject3Credit" name="subject3Credit">
        <label for="subject3Percentage">Percentage:</label>
        <input type="text" id="subject3Percentage" name="subject3Percentage"><br><br>
        
        <label for="subject4Credit">Subject 4 Credit:</label>
        <input type="text" id="subject4Credit" name="subject4Credit">
        <label for="subject4Percentage">Percentage:</label>
        <input type="text" id="subject4Percentage" name="subject4Percentage"><br><br>
        
        <input type="submit" value="Calculate">
    </form>
    </body>
</html>
