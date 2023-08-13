<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>

    <%
    try{
    if(session.getAttribute("user").equals("2")){%>
    	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <link rel="stylesheet" href="css/SellGrain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="nav">
    <ul>
      <li class="logo">GrainsMart</li>
      <li ><a href="account.jsp">Account</a></li>
      <li class="active"><a href="SellGrain.jsp">Sell Grains</a></li>
      
      <li><a href="Grains.jsp">Order Grains</a></li>
      <li><a  href="AboutUs.html">About Us</a></li>
      <li><a href="index.jsp">Home</a></li>
    </ul>
  </div>
  
<div class="popup" id="popup">


   <div class="register" id="register-class">
   <form action="SellGrainBackendjsp.jsp" method="post">
   
   <div class="form">
     <h2>Grain Selling Form</h2>
     <div class="form-element">
     <label for="grain_type"><b>Choose a Grain Name:</b></label>
  <select name="grain_type">
  <option value="Wheat">Wheat</option>
  <option value="Rice">Rice</option>
  <option value="Jowar">Jowar</option>
  <option value="Bajra">Bajra</option>
  <option value="Corn">Corn</option>
  <option value="Cicers">Cicers</option>
  </select></div>
      <div class="form-element">
       <label for="variety"><b>Variety Name</b></label>
       <input type="text" id="variety" name="variety" required placeholder="Enter Grain Variety Name"pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" title="Please enter on alphabets only.">
     </div>
  
     <div class="form-element">
       <label for="g_price"><b>Selling Price Rs/Kg</b></label>
       <input type="number" id="g_price" name="g_price" required placeholder="Enter Selling Price" min=1>
     </div>
     <div class="form-element">
       <label for="g_stock"><b>Grain Stock In Kg</b></label>
       <input type="number" id="g_stock"name="g_stock"  required placeholder="Enter Grain Stock" min=100>
     </div>
    
     <div class="form-element">
       <button name="register_btn">Sell Now</button>
     </div>
    
</div>
</form>
  </div>
  
    </div>
</body>
 
</html>
		   
	 <%  }else if(session.getAttribute("user").equals("1")){
	        	response.sendRedirect("Grains.jsp");
	   }
	   else if(session.getAttribute("user").equals("")){
	    	response.sendRedirect("account.jsp");

	   }
		   }catch(Exception e){
		   response.sendRedirect("account.jsp");
	   } %>
