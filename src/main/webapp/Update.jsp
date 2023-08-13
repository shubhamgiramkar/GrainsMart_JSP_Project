<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Price And Stock</title>
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
<section class="mybookings" id="change-price" >

  <div class="cp" id="cp">
  <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="farmer_dash.jsp">Dashboard</a></button>
  <div class="cp1">
    
  <div style="border:1px solid black;background-color: #E4F5D4;margin-left:30px;padding:5px;">
  <form action="updateprice.jsp" method="POST">
  <h2 style="text-align:center;">Update Price & Stock</h2>
     <p><b>Change Grains Price:</b></p>
    <input type="number" name="g_id" placeholder="Enter Grain Id"  required min="1"></input>
    <input type="number" name="g_price" placeholder="Enter New Selling Price"  required min="1"></input>
    <input type="submit" name="hall_p_btn" value="Update"></input></form>
    <form action="updatestock.jsp" method="POST"><br>
    <p><b>Change Grains Stock</b></p>
    <input type="number" name="g_id" placeholder="Enter Grain Id"  required min="1"></input>
    <input type="number" name="g_stock" placeholder="Enter New Stock" min="100" required min="1"></input>
    <input type="submit" name="service_p_btn" value="Update"></input>
      </form>
      <form action="removegrain.jsp" method="POST"><br>
    <p><b>Remove Grains</b></p>
    <input type="number" name="g_id" placeholder="Enter Grain Id" required min="1"></input>
    
    <input type="submit" name="service_p_btn" value="Delete"></input>
      </form>
      </div>
<table>
	    <tr>
		<th>Grain Id</th>
		<th>Grain Name</th>
		<th>Grain Variety</th>
		<th>Selling Price</th>
        <th>Total Stock</th>
        
        </tr><%String username=(String)session.getAttribute("username");
		String f_id=""; %>
			<%
			try{
				 
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
		           Statement st=conn.createStatement();
		           ResultSet rs1=st.executeQuery("select * from farmer where f_username='"+ username +"'");
			   	    while(rs1.next()){
			   	    	 f_id=rs1.getString("f_id");
			   	    }
		           ResultSet rs=st.executeQuery("select * from grains where f_id='"+f_id+"'");
		           while(rs.next()){				   
		        	 

			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td><%=rs.getString("grains_id")%></td>
				<td><%=rs.getString("grains_name")%></td>
				<td><%=rs.getString("grains_variety")%></td>
				<td><%=rs.getString("grains_price")%></td>
                <td><%=rs.getString("grains_stock")%></td>
                
			</tr>
      
			<% 
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>
  </div></div>
</section>

</body>
</html>