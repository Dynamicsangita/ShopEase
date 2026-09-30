<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categories | ShopEase</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}
body{
    background:#f5f7fb;
}

.navbar{
    background:#111827;
    color:white;
    padding:18px 40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    color:#2196f3;
    font-size:32px;
    font-weight:bold;
}

.container{
    width:90%;
    margin:40px auto;
}

h2{
    text-align:center;
    color:#0d47a1;
    margin-bottom:30px;
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:25px;
}

.card{
    background:white;
    border-radius:15px;
    padding:20px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
    transition:.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card img{
    width:120px;
    height:120px;
    object-fit:cover;
}

.card h3{
    margin:15px 0;
}

.btn{
    background:#2196f3;
    color:white;
    padding:10px 20px;
    text-decoration:none;
    border-radius:8px;
    display:inline-block;
}
</style>

</head>
<body>

<div class="navbar">
    <div class="logo">🛒 ShopEase</div>
</div>

<div class="container">

<h2>Shop By Categories</h2>

<div class="grid">

<div class="card">
<img src="images/mobile.png">
<h3>Mobiles</h3>
<a href="products.jsp" class="btn">View</a>
</div>

<div class="card">
<img src="images/laptop.png">
<h3>Laptops</h3>
<a href="products.jsp" class="btn">View</a>
</div>

<div class="card">
<img src="images/headphone.jpg">
<h3>Headphones</h3>
<a href="products.jsp" class="btn">View</a>
</div>

<div class="card">
<img src="images/shirt.jpg">
<h3>Fashion</h3>
<a href="products.jsp" class="btn">View</a>
</div>

<div class="card">
<img src="images/shoe.jpg">
<h3>Shoes</h3>
<a href="products.jsp" class="btn">View</a>
</div>

<div class="card">
<img src="images/beauty.png">
<h3>Beauty</h3>
<a href="products.jsp" class="btn">View</a>
</div>

</div>

</div>

</body>
</html>