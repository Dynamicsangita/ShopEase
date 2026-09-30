<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Product Details | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#f5f5f5;
font-family:Poppins,sans-serif;
}

.container{
width:90%;
margin:40px auto;
display:flex;
gap:50px;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.15);
}

.left{
flex:1;
}

.left img{
width:100%;
border-radius:12px;
}

.right{
flex:1;
}

.right h1{
margin-bottom:15px;
}

.price{
font-size:30px;
color:#2563eb;
font-weight:bold;
}

.old{
text-decoration:line-through;
color:gray;
font-size:18px;
margin-left:10px;
}

.discount{
color:green;
font-size:18px;
margin-top:10px;
}

.rating{
color:orange;
font-size:20px;
margin:15px 0;
}

.stock{
color:green;
font-weight:bold;
}

.quantity{
margin-top:20px;
}

.quantity input{
width:70px;
padding:10px;
font-size:18px;
}

.buttons{
margin-top:30px;
display:flex;
gap:20px;
}

.cart{
background:#2563eb;
color:white;
padding:15px 30px;
border:none;
border-radius:8px;
cursor:pointer;
}

.buy{
background:#16a34a;
color:white;
padding:15px 30px;
border:none;
border-radius:8px;
cursor:pointer;
}

.description{
width:90%;
margin:30px auto;
background:white;
padding:30px;
border-radius:12px;
}

.review{
width:90%;
margin:30px auto;
background:white;
padding:30px;
border-radius:12px;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="logo">

ShopEase

</div>

<ul>

<li><a href="index.jsp">Home</a></li>

<li><a href="products.jsp">Products</a></li>

<li><a href="cart.jsp">Cart</a></li>

<li><a href="orders.jsp">Orders</a></li>

</ul>

</nav>

<div class="container">

<div class="left">

<img src="images/iphone.jpg">

</div>

<div class="right">

<h1>Apple iPhone 16 Pro Max</h1>

<div class="rating">

★★★★★ (4.9)

</div>

<p class="price">

₹1,29,999

<span class="old">

₹1,39,999

</span>

</p>

<p class="discount">

10% OFF

</p>

<p class="stock">

In Stock

</p>

<div class="quantity">

Quantity

<input type="number" value="1" min="1">

</div>

<div class="buttons">

<button class="cart">

Add To Cart

</button>

<button class="buy">

Buy Now

</button>

</div>

</div>

</div>

<div class="description">

<h2>Product Description</h2>

<p>

The Apple iPhone 16 Pro Max features a stunning display, powerful processor, professional-grade cameras, long battery life, and premium design for an exceptional smartphone experience.

</p>

</div>

<div class="review">

<h2>Customer Reviews</h2>

<p>

⭐⭐⭐⭐⭐ Amazing product with excellent performance.

</p>

<p>

⭐⭐⭐⭐ Great camera quality and battery backup.

</p>

</div>

</body>

</html>