<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>ShopEase | Home</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<script src="js/script.js" defer></script>

</head>

<body>

<!-- Navbar -->

<header>

<nav class="navbar">

<div class="logo">

<i class="fa-solid fa-cart-shopping"></i>

ShopEase

</div>

<form class="search" id="search-form" role="search">

<input id="search" type="text" placeholder="Search Products..." aria-label="Search Products">

<button type="submit" class="search-btn" aria-label="Search Products">

<i class="fa-solid fa-magnifying-glass"></i>

</button>

</form>

<ul>

<li><a href="index.jsp">Home</a></li>

<li><a href="products.jsp">Products</a></li>

<li><a href="categories.jsp">Categories</a></li>

<li><a href="cart.jsp">

<i class="fa-solid fa-cart-shopping"></i>

Cart

</a></li>

<li><a href="orders.jsp">Orders</a></li>

<li><a href="login.jsp">Login</a></li>

<li><a href="register.jsp">Register</a></li>

</ul>

</nav>

</header>

<!-- Hero -->

<section class="hero">

<video class="hero-video" autoplay muted loop playsinline poster="images/banner.jpg">

<source src="images/shopping.mp4" type="video/mp4">
Your browser does not support the video tag.

</video>

<div class="hero-overlay"></div>

<div class="hero-content">

<h1>

Big Sale

Up To 50% OFF

</h1>

<p>

Shop Smart.

Shop Faster.

Shop With ShopEase.

</p>

<a href="products.jsp" class="btn">

Shop Now

</a>

</div>

</section>

<!-- Categories -->

<section class="categories">

<h2>

Shop By Category

</h2>

<div class="category-container">

<div class="category-card">

<img src="images/mobile.png">

<h3>Mobiles</h3>

</div>

<div class="category-card">

<img src="images/laptop.png">

<h3>Laptops</h3>

</div>

<div class="category-card">

<img src="images/fashion.png">

<h3>Fashion</h3>

</div>

<div class="category-card">

<img src="images/shoes.png">

<h3>Shoes</h3>

</div>

<div class="category-card">

<img src="images/watch.png">

<h3>Watches</h3>

</div>

<div class="category-card">

<img src="images/beauty.png">

<h3>Beauty</h3>

</div>

</div>

</section>

<!-- Featured Products -->

<section class="products">

<h2>

Featured Products

</h2>

<div class="product-container">

<div class="product-card">

<img src="images/iphone.jpg">

<h3>iPhone 16 Pro</h3>

<p>₹1,29,999</p>

<button>Add To Cart</button>

</div>

<div class="product-card">

<img src="images/headphone.jpg">

<h3>Wireless Headphone</h3>

<p>₹3,499</p>

<button>Add To Cart</button>

</div>

<div class="product-card">

<img src="images/shirt.jpg">

<h3>Men's Shirt</h3>

<p>₹999</p>

<button>Add To Cart</button>

</div>

<div class="product-card">

<img src="images/shoe.jpg">

<h3>Nike Shoes</h3>

<p>₹4,999</p>

<button>Add To Cart</button>

</div>

</div>

</section>

<!-- Offer -->

<section class="offer">

<h2>

🔥 Today's Mega Deal

</h2>

<p>

Flat 50% OFF

On Electronics

</p>

</section>

<!-- Footer -->

<footer>

<p>

© 2026 ShopEase

All Rights Reserved.

</p>

</footer>

</body>

</html>