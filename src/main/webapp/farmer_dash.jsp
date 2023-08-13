<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Dashboard</title>
<link rel="stylesheet" href="css/farmer_dash.css">
<link rel="stylesheet" href="css/nav.css">

</head>
<body>
<div class="nav">
    <ul>
      <li class="logo">GrainsMart</li>
      <li class="active"><a href="account.jsp">Account</a></li>
      <li><a href="SellGrain.jsp">Sell Grains</a></li>
      
      <li><a href="Grains.jsp">Order Grains</a></li>
      <li><a  href="AboutUs.html">About Us</a></li>
      <li><a href="index.jsp">Home</a></li>
    </ul>
  </div>
<section class="dashboard" id="udash">
<!--  <form action="" method="POST">-->
  <div class="dash" id="a_dash">
  <h1 style="text-align: center;">Farmer Dashboard</h1>
    <div class="row">
      <button class="ref" name="tbooking" ><a href="FarmerProfile.jsp">
      <div class="element">
        <p>Profile</p>
      </div></a></button>
      <button class="ref" name="c-details"><a href="orders.jsp">
      <div class="element" >
        <p>Orders</p>
      </div></a></button>
    </div>
    <div class="row" style="margin-top:3%;">
    <button class="ref" name="editprice"><a href="CustomerDetail.jsp">
      <div class="element" >
        <p>Customer Details</p>
      </div></a></button>
      <button class="ref" name="logOut"><a href="Update.jsp">
      <div class="element" >
        <p>Manage Grains</p>
      </div></a>
      </button>
    </div>
    <div class="row" style="margin-top:6%;">
    <button class="ref" name="editprice">
      <div class="element" >
        <p>Delivery Status</p>
      </div></a></button>
      <button class="ref" name="logOut"><a href="logout.jsp">
      <div class="element" >
        <p >Logout</p>
      </div></a>
      </button>
    </div>
  </div><!--</form>-->
</section>

</body>
</html>