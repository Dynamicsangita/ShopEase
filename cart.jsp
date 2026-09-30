<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f4f6f9;
    font-family:Poppins,sans-serif;
}

.cart-container{
    width:90%;
    margin:40px auto;
}

.cart-container h1{
    color:#2563eb;
    margin-bottom:20px;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
    border-radius:12px;
    overflow:hidden;
}

table th{
    background:#2563eb;
    color:white;
    padding:15px;
}

table td{
    text-align:center;
    padding:18px;
    border-bottom:1px solid #ddd;
}

table img{
    width:80px;
    border-radius:8px;
}

.qty{
    width:60px;
    text-align:center;
    padding:8px;
}

.remove{
    background:#ef4444;
    color:white;
    border:none;
    padding:10px 18px;
    border-radius:6px;
    cursor:pointer;
}

.remove:hover{
    background:#dc2626;
}

.summary{
    width:350px;
    margin-top:30px;
    margin-left:auto;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
}

.summary h2{
    margin-bottom:20px;
    color:#2563eb;
}

.summary p{
    margin:12px 0;
    display:flex;
    justify-content:space-between;
}

.checkout{
    width:100%;
    margin-top:20px;
    padding:14px;
    background:#16a34a;
    color:white;
    border:none;
    border-radius:8px;
    cursor:pointer;
    font-size:16px;
}

.checkout:hover{
    background:#15803d;
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

<li><a href="cart.jsp">Cart</a></li>

<li><a href="orders.jsp">Orders</a></li>

<li><a href="profile.jsp">Profile</a></li>

</ul>

</nav>

<div class="cart-container">

<h1>🛒 Shopping Cart</h1>

<table>

<tr>

<th>Product</th>

<th>Name</th>

<th>Price</th>

<th>Quantity</th>

<th>Total</th>

<th>Action</th>

</tr>

<tr>

<td><img src="images/iphone.jpg"></td>

<td>iPhone 16 Pro</td>

<td>₹1,29,999</td>

<td><input class="qty" type="number" value="1"></td>

<td>₹1,29,999</td>

<td><button class="remove">Remove</button></td>

</tr>

<tr>

<td><img src="images/headphone.jpg"></td>

<td>Wireless Headphone</td>

<td>₹3,499</td>

<td><input class="qty" type="number" value="2"></td>

<td>₹6,998</td>

<td><button class="remove">Remove</button></td>

</tr>

</table>

<div class="summary">

<h2>Order Summary</h2>

<p><span>Subtotal</span><span>₹1,36,997</span></p>

<p><span>Shipping</span><span>₹199</span></p>

<p><span>Discount</span><span>-₹2,000</span></p>

<hr>

<p><strong>Total</strong><strong>₹1,35,196</strong></p>

<button class="checkout" onclick="location.href='checkout.jsp'">

Proceed to Checkout

</button>

</div>

</div>

</body>
</html>