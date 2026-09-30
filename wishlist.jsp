<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wishlist | ShopEase</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#f5f7fb;
font-family:Poppins,sans-serif;
}

.container{
width:90%;
margin:40px auto;
}

.container h1{
text-align:center;
color:#2563eb;
margin-bottom:30px;
}

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:25px;
}

.card{
background:white;
border-radius:15px;
overflow:hidden;
box-shadow:0 5px 15px rgba(0,0,0,.1);
transition:.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
height:250px;
object-fit:cover;
}

.info{
padding:20px;
}

.info h3{
margin-bottom:10px;
}

.price{
color:#2563eb;
font-size:22px;
font-weight:bold;
}

.rating{
color:orange;
margin:10px 0;
}

.buttons{
display:flex;
gap:10px;
margin-top:15px;
}

.cart{
flex:1;
background:#2563eb;
color:white;
border:none;
padding:12px;
border-radius:8px;
cursor:pointer;
}

.remove{
flex:1;
background:#ef4444;
color:white;
border:none;
padding:12px;
border-radius:8px;
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

<li><a href="wishlist.jsp">Wishlist</a></li>

<li><a href="cart.jsp">Cart</a></li>

<li><a href="orders.jsp">Orders</a></li>

</ul>

</nav>

<div class="container">

<h1>❤️ My Wishlist</h1>

<div class="grid">

<div class="card">

<img src="images/iphone.jpg">

<div class="info">

<h3>Apple iPhone 16 Pro</h3>

<div class="rating">
★★★★★
</div>

<p class="price">₹1,29,999</p>

<div class="buttons">

<button class="cart">
Move To Cart
</button>

<button class="remove">
Remove
</button>

</div>

</div>

</div>

<div class="card">

<img src="images/headphone.jpg">

<div class="info">

<h3>Wireless Headphone</h3>

<div class="rating">
★★★★☆
</div>

<p class="price">₹3,499</p>

<div class="buttons">

<button class="cart">
Move To Cart
</button>

<button class="remove">
Remove
</button>

</div>

</div>

</div>

</div>

</div>

</body>
</html>