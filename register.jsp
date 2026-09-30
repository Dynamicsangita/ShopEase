<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/db.jspf" %>

<%
String error = null;
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    fullName = fullName == null ? "" : fullName.trim();
    email = email == null ? "" : email.trim().toLowerCase();
    phone = phone == null ? "" : phone.trim();
    password = password == null ? "" : password;
    confirmPassword = confirmPassword == null ? "" : confirmPassword;

    if (fullName.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty()) {
        error = "All fields are required.";
    } else if (!password.equals(confirmPassword)) {
        error = "Passwords do not match.";
    } else if (password.length() < 8) {
        error = "Password must be at least 8 characters.";
    } else {
        try (Connection connection = openDatabaseConnection(application);
             PreparedStatement statement = connection.prepareStatement(
                 "INSERT INTO users (full_name, email, phone, password_hash) VALUES (?, ?, ?, ?)")) {
            statement.setString(1, fullName);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, hashPassword(password));
            statement.executeUpdate();
            response.sendRedirect("login.jsp?registered=1");
            return;
        } catch (java.sql.SQLIntegrityConstraintViolationException exception) {
            error = "An account with this email already exists.";
        } catch (Exception exception) {
            error = "Registration is temporarily unavailable. Check the database configuration.";
        }
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f8fafc;
}

.register-container{

    width:450px;

    margin:50px auto;

    background:white;

    padding:35px;

    border-radius:15px;

    box-shadow:0 8px 20px rgba(0,0,0,.15);

}

.register-container h2{

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

.register-btn{

    width:100%;

    padding:14px;

    background:#2563eb;

    color:white;

    border:none;

    border-radius:8px;

    font-size:17px;

    cursor:pointer;

}

.register-btn:hover{

    background:#1d4ed8;

}

.bottom{

    text-align:center;

    margin-top:20px;

}

.bottom a{

    text-decoration:none;

    color:#2563eb;

    font-weight:bold;

}

</style>

</head>

<body>

<div class="register-container">

<h2>

<i class="fa-solid fa-user-plus"></i>

Create Account

</h2>

<form action="register.jsp" method="post">

<div class="input-box">

<label>Full Name</label>

<input
type="text"
name="fullName"
autocomplete="name"
placeholder="Enter Full Name"
required>

</div>

<div class="input-box">

<label>Email</label>

<input
type="email"
name="email"
autocomplete="email"
placeholder="Enter Email"
required>

</div>

<div class="input-box">

<label>Phone Number</label>

<input
type="tel"
name="phone"
autocomplete="tel"
placeholder="Enter Phone Number"
required>

</div>

<div class="input-box">

<label>Password</label>

<input
type="password"
name="password"
autocomplete="new-password"
placeholder="Create Password"
required>

</div>

<div class="input-box">

<label>Confirm Password</label>

<input
type="password"
name="confirmPassword"
autocomplete="new-password"
placeholder="Confirm Password"
required>

</div>

<% if (error != null) { %>
<p style="color:#b91c1c;margin:0 0 16px;text-align:center;"><%= escapeHtml(error) %></p>
<% } %>

<button class="register-btn">

Register

</button>

<div class="bottom">

Already have an account?

<a href="login.jsp">

Login

</a>

</div>

</form>

</div>

</body>
</html>