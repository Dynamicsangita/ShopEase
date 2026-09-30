<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders | ShopEase</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f5f7fb;
    font-family:Poppins,sans-serif;
}

.order-container{
    width:90%;
    margin:40px auto;
}

.order-container h1{
    color:#2563eb;
    margin-bottom:25px;
}

.order-card{
    background:white;
    border-radius:12px;
    padding:20px;
    margin-bottom:25px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.order-header{
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
}

.status{
    color:green;
    font-weight:bold;
}

.product{
    display:flex;
    align-items:center;
    gap:20px;
    margin-top:15px;
}

.product img{
    width:120px;
    border-radius:10px;
}

.info h3{
    margin-bottom:10px;
}

.price{
    color:#2563eb;
    font-size:20px;
    font-weight:bold;
}

.buttons{
    margin-top:20px;
}

button{
    padding:10px 18px;
    border:none;
    border-radius:6px;
    cursor:pointer;
    color:white;
    margin-right:10px;
}

.track{
    background:#2563eb;
}

.invoice{
    background:#16a34a;
}

.buyagain{
    background:#ea580c;
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

<div class="order-container">

<h1>📦 My Orders</h1>

<div class="order-card">

<div class="order-header">

<div>

<b>Order ID:</b> #SE20260001

</div>

<div class="status">

Delivered ✅

</div>

</div>

<p><b>Order Date:</b> 20 July 2026</p>

<p><b>Payment:</b> Online Payment</p>

<div class="product">

<img src="images/iphone.jpg">

<div class="info">

<h3>Apple iPhone 16 Pro Max</h3>

<p class="price">₹1,29,999</p>

<p>Quantity : 1</p>

</div>

</div>

<div class="buttons">

<button class="track">

Track Order

</button>

<button class="invoice">

Download Invoice

</button>

<button class="buyagain">

Buy Again

</button>

</div>

</div>

<div class="order-card">

<div class="order-header">

<div>

<b>Order ID:</b> #SE20260002

</div>

<div class="status">

Shipped 🚚

</div>

</div>

<p><b>Order Date:</b> 25 July 2026</p>

<p><b>Payment:</b> Cash On Delivery</p>

<div class="product">

<img src="images/headphone.jpg">

<div class="info">

<h3>Wireless Bluetooth Headphone</h3>

<p class="price">₹3,499</p>

<p>Quantity : 2</p>

</div>

</div>

<div class="buttons">

<button class="track">

Track Order

</button>

<button class="invoice">

Download Invoice

</button>

<button class="buyagain">

Buy Again

</button>

</div>

</div>

</div>

</body>
</html>