<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Manage Products | ShopEase Admin</title>

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
background:#f5f7fb;
}

.container{
width:95%;
margin:30px auto;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.header h1{
color:#2563eb;
}

.add-btn{
background:#16a34a;
color:white;
padding:12px 20px;
text-decoration:none;
border-radius:8px;
}

.search-box{
margin-bottom:20px;
}

.search-box input{
width:350px;
padding:12px;
border:1px solid #ccc;
border-radius:8px;
}

table{
width:100%;
border-collapse:collapse;
background:white;
border-radius:12px;
overflow:hidden;
box-shadow:0 5px 15px rgba(0,0,0,.1);
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

table img{
width:70px;
height:70px;
object-fit:cover;
border-radius:8px;
}

.edit{
background:#2563eb;
color:white;
padding:8px 15px;
text-decoration:none;
border-radius:6px;
margin-right:8px;
}

.delete{
background:#ef4444;
color:white;
padding:8px 15px;
text-decoration:none;
border-radius:6px;
}

.back{
display:inline-block;
margin-top:20px;
text-decoration:none;
font-weight:bold;
color:#2563eb;
}

body{display:flex;background:linear-gradient(135deg,#eef4ff,#f8fafc 55%,#ecfdf5);font-family:Poppins,sans-serif}
.sidebar{position:fixed;width:256px;height:100vh;padding:24px 14px;background:#111827;color:white;box-shadow:10px 0 30px rgba(15,23,42,.12)}
.sidebar h2{margin:0 10px 34px;font-size:1.15rem}
.sidebar a{display:block;margin:4px 0;padding:13px 16px;border-radius:12px;color:white;text-decoration:none;font-size:.88rem}
.sidebar a:hover,.sidebar a:nth-of-type(3){background:#4338ca}
.sidebar a i{width:22px;margin-right:8px;color:#a7f3d0}
.main{width:100%;margin-left:256px;padding:34px}
.container{width:100%;max-width:1180px;margin:0 auto}
.header h1{color:#111827;font-size:1.8rem}
.header p{margin-top:5px;color:#64748b;font-size:.85rem}
.add-btn{background:#0f766e;padding:11px 16px;border-radius:10px;font-weight:700}
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:18px;padding:14px 16px;border:1px solid #dbe5f2;border-radius:16px;background:rgba(255,255,255,.75)}
.search-box{display:flex;gap:10px;margin:0}
.search-box input,.category-filter{width:auto;min-width:240px;padding:11px 12px;border:1px solid #dbe5f2;border-radius:10px;background:white;outline:none;font:inherit}
.category-filter{min-width:150px}
table{margin:0;border-radius:18px;box-shadow:0 14px 28px rgba(15,23,42,.06)}
table th{background:#1e293b;padding:14px;font-size:.75rem;text-transform:uppercase;letter-spacing:.04em}
table td{padding:14px;color:#475569;font-size:.84rem}
table td:first-child,table td:nth-child(3){color:#111827;font-weight:700}
table img{width:58px;height:58px;padding:5px;object-fit:contain;border-radius:11px;background:#eef4ff}
.stock{display:inline-block;padding:5px 9px;border-radius:999px;background:#dcfce7;color:#15803d;font-size:.72rem;font-weight:700}
.action-group{white-space:nowrap}
.edit,.delete{display:inline-flex;padding:8px 10px;border-radius:8px;font-size:.75rem;font-weight:700}
.edit{background:#ede9fe;color:#6d28d9}.delete{border:0;background:#fee2e2;color:#b91c1c;cursor:pointer;font:inherit}
.back{margin-top:18px;display:inline-flex;gap:7px;color:#4f46e5}
@media(max-width:800px){body{display:block}.sidebar{position:static;width:100%;height:auto;padding:16px}.sidebar h2{text-align:center;margin:0 8px 12px}.sidebar a{display:inline-block;padding:9px 10px;font-size:.74rem}.main{margin:0;padding:20px 14px}.header{align-items:flex-start;flex-direction:column;gap:12px}.toolbar{align-items:stretch;flex-direction:column}.search-box{width:100%}.search-box input,.category-filter{width:100%;min-width:0}table{display:block;overflow-x:auto;white-space:nowrap}}

</style>

</head>

<body>

<aside class="sidebar">
<h2>ShopEase Admin</h2>
<a href="admin-dashboard.jsp"><i class="fa-solid fa-house"></i> Dashboard</a>
<a href="add-product.jsp"><i class="fa-solid fa-plus"></i> Add Product</a>
<a href="manage-products.jsp"><i class="fa-solid fa-box"></i> Products</a>
<a href="manage-orders.jsp"><i class="fa-solid fa-cart-shopping"></i> Orders</a>
<a href="manage-users.jsp"><i class="fa-solid fa-users"></i> Users</a>
<a href="sales-report.jsp"><i class="fa-solid fa-chart-line"></i> Sales Report</a>
</aside>

<main class="main"><div class="container">

<div class="header">

<h1>Manage Products</h1>
<p>Review your catalog, stock levels and product actions.</p>

<a href="add-product.jsp" class="add-btn">
<i class="fa-solid fa-plus"></i> Add Product
</a>

</div>

<div class="toolbar"><div class="search-box"><i class="fa-solid fa-magnifying-glass"></i><input id="product-search" type="search" placeholder="Search products..."></div><select id="category-filter" class="category-filter"><option value="all">All categories</option><option>Mobiles</option><option>Laptops</option><option>Electronics</option></select></div>

<table>

<tr>

<th>ID</th>

<th>Image</th>

<th>Product</th>

<th>Category</th>

<th>Price</th>

<th>Stock</th>

<th>Action</th>

</tr>

<tr>

<td>101</td>

<td><img src="../images/iphone.jpg"></td>

<td>iPhone 16 Pro</td>

<td>Mobiles</td>

<td>₹1,29,999</td>

<td><span class="stock">20 in stock</span></td>

<td class="action-group">

<a href="edit-product.jsp" class="edit">
Edit
</a>

<button type="button" class="delete">
Delete
</button>

</td>

</tr>

<tr>

<td>102</td>

<td><img src="../images/laptop.jpg"></td>

<td>HP Laptop</td>

<td>Laptops</td>

<td>₹59,999</td>

<td><span class="stock">15 in stock</span></td>

<td class="action-group">

<a href="edit-product.jsp" class="edit">
Edit
</a>

<button type="button" class="delete">
Delete
</button>

</td>

</tr>

<tr>

<td>103</td>

<td><img src="../images/headphone.jpg"></td>

<td>Wireless Headphone</td>

<td>Electronics</td>

<td>₹3,499</td>

<td><span class="stock">50 in stock</span></td>

<td class="action-group">

<a href="edit-product.jsp" class="edit">
Edit
</a>

<button type="button" class="delete">
Delete
</button>

</td>

</tr>

</table>

<a href="admin-dashboard.jsp" class="back">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div></main>
<script>
const rows=[...document.querySelectorAll('table tr')].slice(1);const search=document.getElementById('product-search');const filter=document.getElementById('category-filter');
function filterProducts(){const query=search.value.toLowerCase();const category=filter.value.toLowerCase();rows.forEach(row=>{const text=row.textContent.toLowerCase();const matchesSearch=!query||text.includes(query);const matchesCategory=category==='all'||text.includes(category);row.style.display=matchesSearch&&matchesCategory?'':'none';});}
search.addEventListener('input',filterProducts);filter.addEventListener('change',filterProducts);document.querySelectorAll('.delete').forEach(button=>button.addEventListener('click',()=>{if(confirm('Remove this product from the catalog?'))button.closest('tr').remove();}));
</script>
</body>
</html>