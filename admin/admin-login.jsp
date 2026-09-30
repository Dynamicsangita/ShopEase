<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Admin Login | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#eef2ff;
font-family:Poppins,sans-serif;
}

.admin-login{
width:420px;
margin:80px auto;
background:white;
padding:35px;
border-radius:15px;
box-shadow:0 8px 20px rgba(0,0,0,.15);
}

.admin-login h2{
text-align:center;
margin-bottom:25px;
color:#2563eb;
}

.input-box{
margin-bottom:20px;
}

.input-box label{
display:block;
margin-bottom:8px;
font-weight:bold;
}

.input-box input{
width:100%;
padding:12px;
border:1px solid #ccc;
border-radius:8px;
}

button{
width:100%;
padding:14px;
background:#2563eb;
color:white;
border:none;
border-radius:8px;
cursor:pointer;
font-size:17px;
}

button:hover{
background:#1d4ed8;
}

</style>

</head>

<body>

<div class="admin-login">

<h2>

<i class="fa-solid fa-user-shield"></i>

Admin Login

</h2>

<form action="admin-dashboard.jsp">

<div class="input-box">

<label>Admin Email</label>

<input type="email" required>

</div>

<div class="input-box">

<label>Password</label>

<input type="password" required>

</div>

<button>

Login

</button>

</form>

</div>

</body>

</html>