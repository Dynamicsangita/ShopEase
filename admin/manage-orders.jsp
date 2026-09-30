<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Orders | ShopEase Admin</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
*{box-sizing:border-box;margin:0;padding:0;font-family:Poppins,Arial,sans-serif}
body{display:flex;min-height:100vh;background:linear-gradient(135deg,#eef4ff,#f8fafc 55%,#ecfdf5);color:#1e293b}
.sidebar{position:fixed;width:256px;height:100vh;padding:24px 14px;background:#111827;color:white;box-shadow:10px 0 30px rgba(15,23,42,.12)}
.sidebar h2{margin:0 10px 34px;font-size:1.15rem}.sidebar h2:before{content:'🛒';margin-right:8px}
.sidebar a{display:block;margin:4px 0;padding:13px 16px;border-radius:12px;color:white;text-decoration:none;font-size:.88rem}.sidebar a:hover,.sidebar a.active{background:#4338ca}.sidebar a i{width:22px;margin-right:8px;color:#a7f3d0}
.main{width:100%;margin-left:256px;padding:34px}.container{width:100%;max-width:1180px;margin:0 auto}
.header{display:flex;justify-content:space-between;align-items:flex-end;gap:20px;margin-bottom:22px}.header h1{font-size:1.8rem;color:#111827}.header p{margin-top:5px;color:#64748b;font-size:.85rem}
.toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:18px;padding:14px 16px;border:1px solid #dbe5f2;border-radius:16px;background:rgba(255,255,255,.75)}
.search,.status-filter{padding:11px 12px;border:1px solid #dbe5f2;border-radius:10px;background:white;font:inherit;outline:none}.search{width:300px}.status-filter{min-width:160px}
table{width:100%;border-collapse:collapse;overflow:hidden;border-radius:18px;background:white;box-shadow:0 14px 28px rgba(15,23,42,.06)}th{padding:14px;background:#1e293b;color:white;font-size:.75rem;letter-spacing:.04em;text-align:left;text-transform:uppercase}td{padding:14px;border-bottom:1px solid #e2e8f0;color:#475569;font-size:.84rem}td:first-child{color:#111827;font-weight:700}
.payment-badge,.order-status{display:inline-block;padding:5px 9px;border-radius:999px;font-size:.7rem;font-weight:700}.payment-badge{background:#eff6ff;color:#1d4ed8}.order-status{border:1px solid #dbe5f2;background:#f8fafc;font:inherit}.status-pending{background:#fef3c7;color:#a16207}.status-shipped{background:#dbeafe;color:#1d4ed8}.status-delivered{background:#dcfce7;color:#15803d}.status-cancelled{background:#fee2e2;color:#b91c1c}
.view{display:inline-flex;align-items:center;gap:5px;padding:8px 10px;border-radius:8px;background:#ede9fe;color:#6d28d9;font-size:.75rem;font-weight:700;text-decoration:none}.back{display:inline-flex;gap:7px;margin-top:18px;color:#4f46e5;font-weight:700;text-decoration:none}
@media(max-width:800px){body{display:block}.sidebar{position:static;width:100%;height:auto;padding:16px}.sidebar h2{text-align:center;margin:0 8px 12px}.sidebar a{display:inline-block;padding:9px 10px;font-size:.74rem}.main{margin:0;padding:20px 14px}.header{align-items:flex-start;flex-direction:column;gap:12px}.toolbar{align-items:stretch;flex-direction:column}.search,.status-filter{width:100%}table{display:block;overflow-x:auto;white-space:nowrap}}
</style>
</head>
<body>
<aside class="sidebar">
<h2>ShopEase Admin</h2>
<a href="admin-dashboard.jsp"><i class="fa-solid fa-house"></i> Dashboard</a>
<a href="add-product.jsp"><i class="fa-solid fa-plus"></i> Add Product</a>
<a href="manage-products.jsp"><i class="fa-solid fa-box"></i> Products</a>
<a class="active" href="manage-orders.jsp"><i class="fa-solid fa-cart-shopping"></i> Orders</a>
<a href="manage-users.jsp"><i class="fa-solid fa-users"></i> Users</a>
<a href="sales-report.jsp"><i class="fa-solid fa-chart-line"></i> Sales Report</a>
</aside>
<main class="main"><div class="container">
<div class="header"><div><h1>Manage Orders</h1><p>Track fulfillment, payment and delivery status at a glance.</p></div></div>
<div class="toolbar"><input id="order-search" class="search" type="search" placeholder="Search order or customer"><select id="status-filter" class="status-filter"><option value="all">All statuses</option><option>Pending</option><option>Shipped</option><option>Delivered</option><option>Cancelled</option></select></div>
<table><thead><tr><th>Order ID</th><th>Customer</th><th>Product</th><th>Amount</th><th>Payment</th><th>Status</th><th>Action</th></tr></thead><tbody>
<tr><td>#1001</td><td>Sangita</td><td>iPhone 16 Pro</td><td>₹1,29,999</td><td><span class="payment-badge">Paid</span></td><td><select class="order-status" data-status="Shipped"><option>Pending</option><option selected>Shipped</option><option>Delivered</option><option>Cancelled</option></select></td><td><a href="#" class="view"><i class="fa-regular fa-eye"></i> View</a></td></tr>
<tr><td>#1002</td><td>Rahul</td><td>HP Laptop</td><td>₹59,999</td><td><span class="payment-badge">COD</span></td><td><select class="order-status" data-status="Pending"><option selected>Pending</option><option>Shipped</option><option>Delivered</option><option>Cancelled</option></select></td><td><a href="#" class="view"><i class="fa-regular fa-eye"></i> View</a></td></tr>
<tr><td>#1003</td><td>Priya</td><td>Wireless Headphone</td><td>₹3,499</td><td><span class="payment-badge">Paid</span></td><td><select class="order-status" data-status="Delivered"><option>Pending</option><option>Shipped</option><option selected>Delivered</option><option>Cancelled</option></select></td><td><a href="#" class="view"><i class="fa-regular fa-eye"></i> View</a></td></tr>
</tbody></table>
<a href="admin-dashboard.jsp" class="back"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a>
</div></main>
<script>
const rows=[...document.querySelectorAll('tbody tr')];const search=document.getElementById('order-search');const filter=document.getElementById('status-filter');
function paint(select){select.className='order-status status-'+select.value.toLowerCase();select.dataset.status=select.value;applyFilters()}
function applyFilters(){const query=search.value.toLowerCase();const status=filter.value.toLowerCase();rows.forEach(row=>{const selected=row.querySelector('.order-status').value.toLowerCase();row.style.display=(!query||row.textContent.toLowerCase().includes(query))&&(status==='all'||selected===status)?'':'none'})}
search.addEventListener('input',applyFilters);filter.addEventListener('change',applyFilters);document.querySelectorAll('.order-status').forEach(select=>{select.addEventListener('change',()=>paint(select));paint(select)});
</script>
</body>
</html>
