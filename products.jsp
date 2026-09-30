<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products | ShopEase</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<script src="js/script.js" defer></script>

<style>

body{
    background:#f5f7fb;
}

.title{
    text-align:center;
    margin:40px 0;
    color:#2563eb;
}

.product-grid{
    width:90%;
    margin:auto;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
    margin-bottom:50px;
}

.product{
    background:white;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    overflow:hidden;
    transition:.3s;
}

.product:hover{
    transform:translateY(-8px);
}

.product img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.details{
    padding:15px;
}

.details h3{
    margin-bottom:10px;
}

.rating{
    color:orange;
}

.price{
    color:#2563eb;
    font-size:22px;
    font-weight:bold;
}

.old{
    text-decoration:line-through;
    color:gray;
    font-size:15px;
}

.discount{
    color:green;
    font-weight:bold;
}

.btns{
    display:flex;
    gap:10px;
    margin-top:15px;
}

.cart{
    flex:1;
    background:#2563eb;
    color:white;
    border:none;
    padding:10px;
    border-radius:6px;
    cursor:pointer;
}

.buy{
    flex:1;
    background:#16a34a;
    color:white;
    border:none;
    padding:10px;
    border-radius:6px;
    cursor:pointer;
}

.wish{
    color:red;
    font-size:22px;
    margin-top:10px;
    cursor:pointer;
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

<h1 class="title">Featured Products</h1>

<div class="product-grid">

<!-- Product 1 -->

<div class="product">

<img src="images/iphone.jpg">

<div class="details">

<h3>iPhone 16 Pro</h3>

<div class="rating">
★★★★★
</div>

<p class="price">
₹1,29,999
<span class="old">₹1,39,999</span>
</p>

<p class="discount">
10% OFF
</p>

<div class="btns">

<button class="cart">
Add Cart
</button>

<button class="buy">
Buy Now
</button>

</div>

<div class="wish">
❤
</div>

</div>

</div>

<!-- Product 2 -->

<div class="product">

<img src="images/laptop.jpg">

<div class="details">

<h3>HP Laptop</h3>

<div class="rating">
★★★★☆
</div>

<p class="price">
₹59,999
<span class="old">₹69,999</span>
</p>

<p class="discount">
15% OFF
</p>

<div class="btns">

<button class="cart">
Add Cart
</button>

<button class="buy">
Buy Now
</button>

</div>

<div class="wish">
❤
</div>

</div>

</div>

<!-- Product 3 -->

<div class="product">

<img src="images/headphone.jpg">

<div class="details">

<h3>Wireless Headphone</h3>

<div class="rating">
★★★★★
</div>

<p class="price">
₹3,499
<span class="old">₹4,999</span>
</p>

<p class="discount">
30% OFF
</p>

<div class="btns">

<button class="cart">
Add Cart
</button>

<button class="buy">
Buy Now
</button>

</div>

<div class="wish">
❤
</div>

</div>

</div>

<!-- Product 4 -->

<div class="product">

<img src="images/shoe.jpg">

<div class="details">

<h3>Nike Shoes</h3>

<div class="rating">
★★★★☆
</div>

<p class="price">
₹4,999
<span class="old">₹6,499</span>
</p>

<p class="discount">
20% OFF
</p>

<div class="btns">

<button class="cart">
Add Cart
</button>

<button class="buy">
Buy Now
</button>

</div>

<div class="wish">
❤
</div>

</div>

</div>

</div>

</body>
</html>