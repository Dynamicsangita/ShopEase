<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard | ShopEase</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
}

body{
display:flex;
background:#f5f7fb;
}

/* Sidebar */

.sidebar{
width:250px;
height:100vh;
background:#1e3a8a;
color:white;
position:fixed;
padding-top:30px;
}

.sidebar h2{
text-align:center;
margin-bottom:40px;
}

.sidebar a{
display:block;
padding:15px 25px;
text-decoration:none;
color:white;
transition:.3s;
}

.sidebar a:hover{
background:#2563eb;
}

/* Main */

.main{
margin-left:250px;
padding:30px;
width:100%;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:30px;
}

.cards{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
}

.card{
background:white;
padding:25px;
border-radius:12px;
box-shadow:0 5px 15px rgba(0,0,0,.1);
text-align:center;
}

.card i{
font-size:35px;
color:#2563eb;
margin-bottom:15px;
}

.card h2{
color:#2563eb;
margin-bottom:10px;
}

table{
width:100%;
margin-top:40px;
border-collapse:collapse;
background:white;
}

table th{
background:#2563eb;
color:white;
padding:15px;
}

table td{
padding:15px;
text-align:center;
border-bottom:1px solid #ddd;
}

/* Refined admin dashboard surface */
body{
background:linear-gradient(135deg,#eef4ff 0%,#f8fafc 55%,#ecfdf5 100%);
font-family:'Poppins',sans-serif;
}

.sidebar{
width:256px;
background:#111827;
padding:24px 14px;
box-shadow:10px 0 30px rgba(15,23,42,.12);
}

.sidebar h2{
margin:0 10px 34px;
font-size:1.15rem;
text-align:left;
}

.sidebar h2:before{
content:'🛒';
margin-right:8px;
}

.sidebar a{
margin:4px 0;
padding:13px 16px;
border-radius:12px;
font-size:.88rem;
}

.sidebar a:first-of-type,
.sidebar a:hover{
background:#4338ca;
}

.sidebar a i{
width:22px;
margin-right:8px;
color:#a7f3d0;
}

.main{
margin-left:256px;
padding:34px;
}

.header{
margin-bottom:28px;
}

.header h1{
color:#111827;
font-size:1.8rem;
}

.header h1:after{
content:' / Store overview';
color:#64748b;
font-size:.85rem;
font-weight:400;
}

.header h3{
padding:9px 13px;
border:1px solid #dbeafe;
border-radius:999px;
background:#eff6ff;
color:#1d4ed8;
font-size:.8rem;
}

.cards{
grid-template-columns:repeat(4,minmax(0,1fr));
gap:16px;
}

.card{
padding:22px;
border:1px solid rgba(148,163,184,.2);
border-radius:18px;
box-shadow:0 14px 28px rgba(15,23,42,.06);
text-align:left;
}

.card i{
display:grid;
place-items:center;
width:42px;
height:42px;
margin-bottom:16px;
border-radius:13px;
background:#ede9fe;
color:#7c3aed;
font-size:1.15rem;
}

.card h2{
margin-bottom:4px;
color:#111827;
font-size:1.45rem;
}

.card p{
color:#64748b;
font-size:.82rem;
}

table{
margin-top:28px;
overflow:hidden;
border-radius:18px;
box-shadow:0 14px 28px rgba(15,23,42,.06);
}

table th{
background:#1e293b;
padding:14px;
font-size:.78rem;
letter-spacing:.04em;
text-transform:uppercase;
}

table td{
padding:15px 14px;
color:#475569;
font-size:.84rem;
}

table td:first-child{
color:#111827;
font-weight:700;
}

table td:last-child{
color:#15803d;
font-weight:700;
}

@media(max-width:1000px){
.cards{grid-template-columns:repeat(2,minmax(0,1fr));}
}

@media(max-width:700px){
body{display:block;}
.sidebar{position:static;width:100%;height:auto;padding:16px;}
.sidebar h2{margin:0 8px 12px;text-align:center;}
.sidebar a{display:inline-block;padding:9px 10px;font-size:.75rem;}
.main{margin-left:0;padding:20px 14px;}
.header{align-items:flex-start;flex-direction:column;gap:12px;}
.header h1:after{display:block;margin-top:4px;}
.cards{grid-template-columns:1fr 1fr;gap:10px;}
.card{padding:16px;}
table{display:block;overflow-x:auto;white-space:nowrap;}
}

</style>

</head>

<body>

<div class="sidebar">

<h2>ShopEase Admin</h2>

<a href="admin-dashboard.jsp">
<i class="fa-solid fa-house"></i> Dashboard
</a>

<a href="add-product.jsp">
<i class="fa-solid fa-plus"></i> Add Product
</a>

<a href="manage-products.jsp">
<i class="fa-solid fa-box"></i> Products
</a>

<a href="manage-orders.jsp">
<i class="fa-solid fa-cart-shopping"></i> Orders
</a>

<a href="manage-users.jsp">
<i class="fa-solid fa-users"></i> Users
</a>

<a href="sales-report.jsp">
<i class="fa-solid fa-chart-line"></i> Sales Report
</a>

<a href="../index.jsp">
<i class="fa-solid fa-arrow-right-from-bracket"></i> Logout
</a>

</div>

<div class="main">

<div class="header">

<h1>Dashboard</h1>

<h3>Welcome Admin 👋</h3>

</div>

<div class="cards">

<div class="card">

<i class="fa-solid fa-box"></i>

<h2>250</h2>

<p>Total Products</p>

</div>

<div class="card">

<i class="fa-solid fa-users"></i>

<h2>520</h2>

<p>Total Users</p>

</div>

<div class="card">

<i class="fa-solid fa-cart-shopping"></i>

<h2>180</h2>

<p>Total Orders</p>

</div>

<div class="card">

<i class="fa-solid fa-indian-rupee-sign"></i>

<h2>₹8,75,000</h2>

<p>Total Revenue</p>

</div>

</div>

<table>

<tr>

<th>Order ID</th>

<th>Customer</th>

<th>Product</th>

<th>Status</th>

</tr>

<tr>

<td>#1001</td>

<td>Rahul</td>

<td>iPhone 16 Pro</td>

<td>Delivered</td>

</tr>

<tr>

<td>#1002</td>

<td>Priya</td>

<td>HP Laptop</td>

<td>Shipped</td>

</tr>

<tr>

<td>#1003</td>

<td>Amit</td>

<td>Headphones</td>

<td>Pending</td>

</tr>

</table>

</div>

</body>
</html>