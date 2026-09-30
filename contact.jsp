<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Contact Us | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#f5f7fb;
font-family:Poppins,sans-serif;
}

.contact-container{
width:90%;
margin:40px auto;
display:grid;
grid-template-columns:1fr 1fr;
gap:30px;
}

.contact-info,.contact-form{
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.contact-info h2,
.contact-form h2{
color:#2563eb;
margin-bottom:20px;
}

.contact-info p{
margin:20px 0;
font-size:18px;
}

.contact-info i{
color:#2563eb;
margin-right:10px;
}

.input-box{
margin-bottom:20px;
}

.input-box input,
.input-box textarea{
width:100%;
padding:12px;
border:1px solid #ccc;
border-radius:8px;
outline:none;
}

textarea{
resize:none;
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

<div class="contact-container">

<div class="contact-info">

<h2>Contact Information</h2>

<p><i class="fa-solid fa-location-dot"></i> Bhubaneswar, Odisha, India</p>

<p><i class="fa-solid fa-phone"></i> +91 9876543210</p>

<p><i class="fa-solid fa-envelope"></i> support@shopease.com</p>

<p><i class="fa-solid fa-clock"></i> Mon - Sat : 9 AM - 7 PM</p>

</div>

<div class="contact-form">

<h2>Send Message</h2>

<form>

<div class="input-box">

<input type="text" placeholder="Your Name" required>

</div>

<div class="input-box">

<input type="email" placeholder="Your Email" required>

</div>

<div class="input-box">

<input type="text" placeholder="Subject" required>

</div>

<div class="input-box">

<textarea rows="6" placeholder="Write Your Message"></textarea>

</div>

<button type="submit">

Send Message

</button>

</form>

</div>

</div>

</body>

</html>