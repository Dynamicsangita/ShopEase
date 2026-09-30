<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Checkout | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f5f7fb;
    font-family:Poppins,sans-serif;
}

.checkout-container{
    width:90%;
    margin:40px auto;
    display:grid;
    grid-template-columns:2fr 1fr;
    gap:30px;
}

.checkout-form{
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.checkout-form h2{
    color:#2563eb;
    margin-bottom:20px;
}

.input-group{
    margin-bottom:18px;
}

.input-group label{
    display:block;
    margin-bottom:8px;
    font-weight:600;
}

.input-group input,
.input-group textarea,
.input-group select{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    outline:none;
}

.order-summary{
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.order-summary h2{
    color:#2563eb;
    margin-bottom:20px;
}

.order-summary p{
    display:flex;
    justify-content:space-between;
    margin:12px 0;
}

.place-order{
    width:100%;
    margin-top:20px;
    padding:14px;
    border:none;
    background:#16a34a;
    color:white;
    font-size:18px;
    border-radius:8px;
    cursor:pointer;
}

.place-order:hover{
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

</ul>

</nav>

<div class="checkout-container">

<div class="checkout-form">

<h2>Delivery Address</h2>

<form action="orders.jsp">

<div class="input-group">

<label>Full Name</label>

<input type="text" required>

</div>

<div class="input-group">

<label>Email</label>

<input type="email" required>

</div>

<div class="input-group">

<label>Phone Number</label>

<input type="tel" required>

</div>

<div class="input-group">

<label>Address</label>

<textarea rows="4" required></textarea>

</div>

<div class="input-group">

<label>City</label>

<input type="text" required>

</div>

<div class="input-group">

<label>State</label>

<input type="text" required>

</div>

<div class="input-group">

<label>Pincode</label>

<input type="text" required>

</div>

<div class="input-group">

<label>Payment Method</label>

<select required>

<option>UPI</option>

<option>Credit Card</option>

<option>Debit Card</option>

<option>Cash on Delivery</option>

</select>

</div>

<button class="place-order">

Place Order

</button>

</form>

</div>

<div class="order-summary">

<h2>Order Summary</h2>

<p>

<span>Items</span>

<span>₹1,33,498</span>

</p>

<p>

<span>Shipping</span>

<span>₹199</span>

</p>

<p>

<span>Discount</span>

<span>-₹2,000</span>

</p>

<hr>

<p>

<strong>Total</strong>

<strong>₹1,31,697</strong>

</p>

</div>

</div>

</body>
</html>