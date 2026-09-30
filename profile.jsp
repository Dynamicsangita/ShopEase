<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Profile | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#f5f7fb;
font-family:Poppins,sans-serif;
}

.profile-container{
width:85%;
margin:40px auto;
display:grid;
grid-template-columns:300px 1fr;
gap:30px;
}

.sidebar{
background:white;
padding:30px;
border-radius:15px;
text-align:center;
box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.sidebar img{
width:150px;
height:150px;
border-radius:50%;
object-fit:cover;
border:5px solid #2563eb;
}

.sidebar h2{
margin-top:15px;
}

.sidebar p{
color:gray;
margin-top:8px;
}

.menu{
margin-top:30px;
text-align:left;
}

.menu a{
display:block;
padding:12px;
margin:10px 0;
background:#f3f4f6;
border-radius:8px;
text-decoration:none;
color:#333;
transition:.3s;
}

.menu a:hover{
background:#2563eb;
color:white;
}

.content{
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.info{
display:grid;
grid-template-columns:1fr 1fr;
gap:20px;
margin-top:20px;
}

.card{
background:#eef2ff;
padding:20px;
border-radius:10px;
}

.edit-btn{
margin-top:30px;
padding:12px 25px;
background:#2563eb;
color:white;
border:none;
border-radius:8px;
cursor:pointer;
}

.edit-btn:hover{
background:#1d4ed8;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="logo">

<i class="fa-solid fa-cart-shopping"></i>

ShopEase

</div>

<ul>

<li><a href="index.jsp">Home</a></li>

<li><a href="products.jsp">Products</a></li>

<li><a href="wishlist.jsp">Wishlist</a></li>

<li><a href="cart.jsp">Cart</a></li>

<li><a href="orders.jsp">Orders</a></li>

</ul>

</nav>

<div class="profile-container">

<div class="sidebar">

<img src="images/profile.jpg">

<h2>Sangita</h2>

<p>Customer</p>

<div class="menu">

<a href="orders.jsp">
<i class="fa-solid fa-box"></i> My Orders
</a>

<a href="wishlist.jsp">
<i class="fa-solid fa-heart"></i> Wishlist
</a>

<a href="#">
<i class="fa-solid fa-location-dot"></i> Address
</a>

<a href="#">
<i class="fa-solid fa-lock"></i> Change Password
</a>

<a href="login.jsp">
<i class="fa-solid fa-right-from-bracket"></i> Logout
</a>

</div>

</div>

<div class="content">

<h1>My Profile</h1>

<div class="info">

<div class="card">

<h3>Full Name</h3>

<p>Sangita</p>

</div>

<div class="card">

<h3>Email</h3>

<p>sangita@gmail.com</p>

</div>

<div class="card">

<h3>Phone</h3>

<p>+91 9876543210</p>

</div>

<div class="card">

<h3>Address</h3>

<p>Bhubaneswar, Odisha</p>

</div>

</div>

<button class="edit-btn">

Edit Profile

</button>

</div>

</div>

</body>
</html>