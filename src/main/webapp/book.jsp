<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Grains</title>
<link rel="stylesheet" href="css/book.css">
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
<section class="profile" id="profile1">
<%

try{    	String grain_id=request.getParameter("id");


	   
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from grains where grains_id='"+grain_id+"'");
	    while(rs.next()){
	    	
	    	
	    %>
	    


<div class="userprofile">
  <h2>Order Grains</h2>
  <p class="point"><b>Grain Id:</b><%=rs.getString("grains_id")%> </p>
      <p class="point"><b>Grain Name:</b><%=rs.getString("grains_name")%> </p>
      <p class="point"><b>Grain Variety:</b><%=rs.getString("grains_variety")%></p>
      <p class="point"><b>Grain Price:</b><%=rs.getString("grains_price")%></p>
   <form action="bill.jsp" method="post">
   <div class="form-element">
       <label for="quantity">Order Quantity</label>
       <input type="number" id="quantity" name="quantity" required placeholder="Enter Quantity" min="20">
<input type="text" name="id" value="<%=rs.getString("grains_id")%>" style="display:none">
     </div>
     <div class="form-element">
       <label for="address">Delivery Address</label>
       <input type="text" id="address"name="address"  required placeholder="Enter Address">
     </div>
      <div class="form-element">
      
       <input type="submit" id="submit"name="submit" value="Submit">
     </div>
   </form>   
      
</div><% }
}catch(Exception e){
	    	out.print(e);
	    }  
%>
</section>
</body>
</html>