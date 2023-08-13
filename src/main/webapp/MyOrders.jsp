<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Order </title>
    <link rel="stylesheet" href="css/bookform.css">
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
  
<section class="mybookings" id="mybooking" >
  <div class="mb" id="mb" >
  
<table>
          
	    <tr>
		<th> Order Id</th>
		<th>Grains Id</th>
		<th>Grains Name</th>
		<th>Grains Variety</th>
        <th>Grains Price</th>
	     <th> Ordered Quantity</th>
		<th> Total Bill</th>
		<th> Delivery Address</th>
		
		
        <th>Farmer Id</th>
         <th>Farmer Name</th>
         <th>Farmer Email</th>
         <th>Contact Number</th>
        
         
        </tr>
        <%String username=(String)session.getAttribute("username");
		String c_id="";
		String f_id="";
		String g_id="";%>
			<%
			try{
				
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
		           Statement st=conn.createStatement();
		           ResultSet rs1=st.executeQuery("select * from customer where c_username='"+ username +"'");
		   	    while(rs1.next()){
		   	    	 c_id=rs1.getString("c_id");
		   	    }
		           ResultSet rs=st.executeQuery("select * from order1 where c_id='"+c_id+"'");
		           while(rs.next()){				   
		        	 

			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
					<%  f_id=rs.getString("f_d");
					    g_id=rs.getString("g_id"); %>
					
				<td><%=rs.getString("order_id")%></td>
				<td><%=rs.getString("g_id")%></td>
				<td><%=rs.getString("grains_name")%></td>
				<td><%=rs.getString("grains_variety")%></td>
				<td><%=rs.getString("grains_price")%></td>
				<td><%=rs.getString("order_quantity")%></td>
				<td><%=rs.getString("total_bill")%></td>
				<td><%=rs.getString("delivery_add")%></td>
				
				<td><%=f_id%></td>
				
				<td><%=rs.getString("f_Name")%></td>
				<td><%=rs.getString("f_email")%></td>
				<td><%=rs.getString("f_MobileNo")%></td>
				
				
				
			</tr>
      
			<% 
				
		           }}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="customer_dash.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>