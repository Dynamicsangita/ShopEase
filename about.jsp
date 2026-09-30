<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>About Us | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#f5f7fb;
font-family:Poppins,sans-serif;
}

.about-container{
width:90%;
margin:40px auto;
}

.hero{
background:linear-gradient(135deg,#2563eb,#1e40af);
color:white;
padding:60px;
border-radius:15px;
text-align:center;
}

.hero h1{
font-size:45px;
margin-bottom:15px;
}

.hero p{
font-size:20px;
}

.section{
margin-top:40px;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.section h2{
color:#2563eb;
margin-bottom:20px;
}

.cards{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
gap:20px;
margin-top:20px;
}

.card{
background:#eef2ff;
padding:25px;
text-align:center;
border-radius:12px;
}

.card i{
font-size:40px;
color:#2563eb;
margin-bottom:15px;
}

.stats{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-top:30px;
}

.stat{
background:#2563eb;
color:white;
padding:25px;
border-radius:12px;
text-align:center;
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
<li><a href="contact.jsp">Contact</a></li>
<li><a href="about.jsp">About</a></li>

</ul>

</nav>

<div class="about-container">

<div class="hero">

<h1>Welcome to ShopEase</h1>

<p>Your Trusted Online Shopping Destination</p>

</div>

<div class="section">

<h2>About ShopEase</h2>

<p>

ShopEase is a modern e-commerce platform designed to provide customers with a fast, secure, and enjoyable online shopping experience. We offer high-quality products across multiple categories, including electronics, fashion, home appliances, and more.

</p>

</div>

<div class="section">

<h2>Our Mission</h2>

<p>

Our mission is to make online shopping simple, affordable, and accessible to everyone by delivering quality products with excellent customer service.

</p>

</div>

<div class="section">

<h2>Why Choose Us?</h2>

<div class="cards">

<div class="card">

<i class="fa-solid fa-truck-fast"></i>

<h3>Fast Delivery</h3>

</div>

<div class="card">

<i class="fa-solid fa-shield-halved"></i>

<h3>Secure Payment</h3>

</div>

<div class="card">

<i class="fa-solid fa-tags"></i>

<h3>Best Offers</h3>

</div>

<div class="card">

<i class="fa-solid fa-headset"></i>

<h3>24/7 Support</h3>

</div>

</div>

</div>

<div class="section">

<h2>Our Achievements</h2>

<div class="stats">

<div class="stat">

<h1>50K+</h1>

<p>Customers</p>

</div>

<div class="stat">

<h1>20K+</h1>

<p>Products</p>

</div>

<div class="stat">

<h1>100+</h1>

<p>Brands</p>

</div>

<div class="stat">

<h1>99%</h1>

<p>Happy Customers</p>

</div>

</div>

</div>

</div>

</body>

</html>