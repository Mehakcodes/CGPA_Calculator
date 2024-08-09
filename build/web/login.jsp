<%-- 
    Document   : login
    Created on : 21-Apr-2024, 11:58:24 am
    Author     : Mehak
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
    <h2>Login</h2>
    <form action="login" method="POST">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Login">
    </form>
</body>
</html>

