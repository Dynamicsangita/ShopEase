<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Users | ShopEase Admin</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
*{box-sizing:border-box;margin:0;padding:0;font-family:Poppins,Arial,sans-serif}
body{display:flex;min-height:100vh;background:linear-gradient(135deg,#eef4ff,#f8fafc 55%,#ecfdf5);color:#1e293b}
.sidebar{position:fixed;width:256px;height:100vh;padding:24px 14px;background:#111827;color:white;box-shadow:10px 0 30px rgba(15,23,42,.12)}
.sidebar h2{margin:0 10px 34px;font-size:1.15rem}.sidebar h2:before{content:'🛒';margin-right:8px}
.sidebar a{display:block;margin:4px 0;padding:13px 16px;border-radius:12px;color:white;text-decoration:none;font-size:.88rem}.sidebar a:hover,.sidebar a.active{background:#4338ca}.sidebar a i{width:22px;margin-right:8px;color:#a7f3d0}
.main{width:100%;margin-left:256px;padding:34px}.container{width:100%;max-width:1180px;margin:0 auto}.header{display:flex;justify-content:space-between;align-items:flex-end;gap:20px;margin-bottom:22px}.header h1{font-size:1.8rem;color:#111827}.header p{margin-top:5px;color:#64748b;font-size:.85rem}
.toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:18px;padding:14px 16px;border:1px solid #dbe5f2;border-radius:16px;background:rgba(255,255,255,.75)}
.search,.role-filter{padding:11px 12px;border:1px solid #dbe5f2;border-radius:10px;background:white;font:inherit;outline:none}.search{width:320px}.role-filter{min-width:160px}
table{width:100%;border-collapse:collapse;overflow:hidden;border-radius:18px;background:white;box-shadow:0 14px 28px rgba(15,23,42,.06)}th{padding:14px;background:#1e293b;color:white;font-size:.75rem;letter-spacing:.04em;text-align:left;text-transform:uppercase}td{padding:14px;border-bottom:1px solid #e2e8f0;color:#475569;font-size:.84rem}td:first-child{color:#111827;font-weight:700}
.user-cell{display:flex;align-items:center;gap:10px}.avatar{display:grid;place-items:center;width:36px;height:36px;border-radius:11px;background:#ede9fe;color:#6d28d9;font-size:.75rem;font-weight:800}.user-cell span{display:grid;gap:2px}.user-cell small{color:#64748b;font-size:.72rem}.role-badge,.user-status{display:inline-block;padding:5px 9px;border-radius:999px;font-size:.7rem;font-weight:700}.role-badge{background:#eff6ff;color:#1d4ed8}.user-status{background:#dcfce7;color:#15803d}.user-status.blocked{background:#fee2e2;color:#b91c1c}
.action-group{white-space:nowrap}.edit,.delete{display:inline-flex;align-items:center;gap:5px;padding:8px 10px;border-radius:8px;font:inherit;font-size:.75rem;font-weight:700}.edit{border:0;background:#ede9fe;color:#6d28d9;cursor:pointer}.delete{border:0;background:#fee2e2;color:#b91c1c;cursor:pointer}.back{display:inline-flex;gap:7px;margin-top:18px;color:#4f46e5;font-weight:700;text-decoration:none}
@media(max-width:800px){body{display:block}.sidebar{position:static;width:100%;height:auto;padding:16px}.sidebar h2{text-align:center;margin:0 8px 12px}.sidebar a{display:inline-block;padding:9px 10px;font-size:.74rem}.main{margin:0;padding:20px 14px}.header{align-items:flex-start;flex-direction:column;gap:12px}.toolbar{align-items:stretch;flex-direction:column}.search,.role-filter{width:100%}table{display:block;overflow-x:auto;white-space:nowrap}}
</style>
</head>
<body>
<aside class="sidebar"><h2>ShopEase Admin</h2><a href="admin-dashboard.jsp"><i class="fa-solid fa-house"></i> Dashboard</a><a href="add-product.jsp"><i class="fa-solid fa-plus"></i> Add Product</a><a href="manage-products.jsp"><i class="fa-solid fa-box"></i> Products</a><a href="manage-orders.jsp"><i class="fa-solid fa-cart-shopping"></i> Orders</a><a class="active" href="manage-users.jsp"><i class="fa-solid fa-users"></i> Users</a><a href="sales-report.jsp"><i class="fa-solid fa-chart-line"></i> Sales Report</a></aside>
<main class="main"><div class="container"><div class="header"><div><h1>Manage Users</h1><p>Review customer accounts and access status.</p></div></div><div class="toolbar"><input id="user-search" class="search" type="search" placeholder="Search name or email"><select id="role-filter" class="role-filter"><option value="all">All roles</option><option>Customer</option><option>Admin</option></select></div>
<table><thead><tr><th>User</th><th>Phone</th><th>Role</th><th>Status</th><th>Action</th></tr></thead><tbody>
<tr><td><div class="user-cell"><b class="avatar">S</b><span><strong>Sangita</strong><small>sangita@gmail.com</small></span></div></td><td>9876543210</td><td><span class="role-badge">Customer</span></td><td><span class="user-status">Active</span></td><td class="action-group"><button class="edit" type="button"><i class="fa-solid fa-user-pen"></i> Edit</button><button class="delete" type="button"><i class="fa-regular fa-trash-can"></i> Delete</button></td></tr>
<tr><td><div class="user-cell"><b class="avatar">R</b><span><strong>Rahul</strong><small>rahul@gmail.com</small></span></div></td><td>9876543211</td><td><span class="role-badge">Customer</span></td><td><span class="user-status">Active</span></td><td class="action-group"><button class="edit" type="button"><i class="fa-solid fa-user-pen"></i> Edit</button><button class="delete" type="button"><i class="fa-regular fa-trash-can"></i> Delete</button></td></tr>
<tr><td><div class="user-cell"><b class="avatar">P</b><span><strong>Priya</strong><small>priya@gmail.com</small></span></div></td><td>9876543212</td><td><span class="role-badge">Customer</span></td><td><span class="user-status blocked">Blocked</span></td><td class="action-group"><button class="edit" type="button"><i class="fa-solid fa-user-pen"></i> Edit</button><button class="delete" type="button"><i class="fa-regular fa-trash-can"></i> Delete</button></td></tr>
</tbody></table><a href="admin-dashboard.jsp" class="back"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a></div></main>
<script>
const rows=[...document.querySelectorAll('tbody tr')];const search=document.getElementById('user-search');const filter=document.getElementById('role-filter');function applyFilters(){const query=search.value.toLowerCase();const role=filter.value.toLowerCase();rows.forEach(row=>{row.style.display=(!query||row.textContent.toLowerCase().includes(query))&&(role==='all'||row.textContent.toLowerCase().includes(role))?'':'none'})}search.addEventListener('input',applyFilters);filter.addEventListener('change',applyFilters);document.querySelectorAll('.delete').forEach(button=>button.addEventListener('click',()=>{if(confirm('Remove this user account?'))button.closest('tr').remove()}));document.querySelectorAll('.edit').forEach(button=>button.addEventListener('click',()=>alert('User editing is ready for backend connection.')));
</script>
</body>
</html>
