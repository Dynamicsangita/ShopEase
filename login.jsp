<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/db.jspf" %>

<%
String error = null;
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    email = email == null ? "" : email.trim().toLowerCase();
    password = password == null ? "" : password;

    if (email.isEmpty() || password.isEmpty()) {
        error = "Email and password are required.";
    } else {
        try (Connection connection = openDatabaseConnection(application);
             PreparedStatement statement = connection.prepareStatement(
                 "SELECT id, full_name, role, password_hash FROM users WHERE email = ? AND status = 'ACTIVE'")) {
            statement.setString(1, email);
            try (ResultSet result = statement.executeQuery()) {
                if (result.next() && verifyPassword(password, result.getString("password_hash"))) {
                    session.setAttribute("userId", result.getLong("id"));
                    session.setAttribute("userName", result.getString("full_name"));
                    session.setAttribute("userRole", result.getString("role"));
                    response.sendRedirect("index.jsp");
                    return;
                }
            }
            error = "Invalid email or password.";
        } catch (Exception exception) {
            error = "Login is temporarily unavailable. Check the database configuration.";
        }
    }
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Login | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#eef2ff;
}

.login-container{

    width:400px;

    margin:100px auto;

    background:white;

    padding:35px;

    border-radius:15px;

    box-shadow:0 10px 25px rgba(0,0,0,.15);

}

.login-container h2{

    text-align:center;

    color:#2563eb;

    margin-bottom:25px;

}

.input-box{

    margin-bottom:18px;

}

.input-box label{

    display:block;

    margin-bottom:6px;

    font-weight:600;

}

.input-box input{

    width:100%;

    padding:12px;

    border:1px solid #ccc;

    border-radius:8px;

    outline:none;

}

.login-btn{

    width:100%;

    padding:12px;

    background:#2563eb;

    color:white;

    border:none;

    border-radius:8px;

    cursor:pointer;

    font-size:16px;

}

.login-btn:hover{

    background:#1d4ed8;

}

.links{

    margin-top:20px;

    display:flex;

    justify-content:space-between;

}

.links a{

    text-decoration:none;

    color:#2563eb;

}

</style>

</head>

<body>

<div class="login-container">

<h2>

<i class="fa-solid fa-user"></i>

Login

</h2>

<form action="login.jsp" method="post">

<div class="input-box">

<label>Email</label>

<input
type="email"
name="email"
autocomplete="email"
placeholder="Enter Email">

</div>

<div class="input-box">

<label>Password</label>

<input
type="password"
name="password"
autocomplete="current-password"
placeholder="Enter Password">

</div>

<% if (error != null) { %>
<p style="color:#b91c1c;margin:0 0 16px;text-align:center;"><%= escapeHtml(error) %></p>
<% } %>

<button class="login-btn">

Login

</button>

<div class="links">

<a href="register.jsp">

Create Account

</a>

<a href="#">

Forgot Password?

</a>

</div>

</form>

</div>

</body>

</html>