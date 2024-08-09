<%-- 
    Document   : calculateCGPA
    Created on : 21-Apr-2024, 11:45:08 am
    Author     : Mehak
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGPA Calculation Result</title>
</head>
<body>
    <h1>CGPA Calculation Result</h1>
    
    <%
        // Retrieve data from the form
        String[] credits = {request.getParameter("subject1Credit"), request.getParameter("subject2Credit"), 
                            request.getParameter("subject3Credit"), request.getParameter("subject4Credit")};
        String[] percentages = {request.getParameter("subject1Percentage"), request.getParameter("subject2Percentage"), 
                                request.getParameter("subject3Percentage"), request.getParameter("subject4Percentage")};
        
        // Initialize variables
        double totalGradePoints = 0.0;
        double totalCredits = 0.0;
        
        // Calculate total grade points and total credits
        for (int i = 0; i < 4; i++) {
            if (credits[i] != null && !credits[i].isEmpty() && percentages[i] != null && !percentages[i].isEmpty()) {
                int credit = Integer.parseInt(credits[i]);
                double percentage = Double.parseDouble(percentages[i]);
                
                totalGradePoints += (credit * percentage) / 100.0;
                totalCredits += credit;
            }
        }
        
        // Calculate CGPA
        double cgpa = totalGradePoints / totalCredits;
        cgpa=cgpa*10;
    %>
    
    <p>Your CGPA is: <%= String.format("%.2f", cgpa) %></p>
    
</body>
</html>
