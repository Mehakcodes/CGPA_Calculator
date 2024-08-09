<%-- 
    Document   : Register
    Created on : 20-Apr-2024, 10:24:41 pm
    Author     : Mehak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <style>
            body {
    margin: 0;
    padding: 0;
}

nav {
    background-color: #333;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display:flex;
}

li {
    display: inline;
}

li a {
    display: block;
    padding: 20px;
    color: white;
    text-decoration: none;
}

li a:hover {
    background-color: #555;
}
</style>
    </head>
    <body>
        <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="Register.jsp">Register</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>
    <h2>Registration Form</h2>
    <form action="register" method="POST">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="fname">First Name:</label><br>
        <input type="text" id="fname" name="fname" required><br><br>
        
        <label for="lname">Last Name:</label><br>
        <input type="text" id="lname" name="lname" required><br><br>
        
        <label for="age">Age:</label><br>
        <input type="number" id="age" name="age" required><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="college">College Name:</label><br>
        <input type="text" id="college" name="college" required><br><br>
        
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
