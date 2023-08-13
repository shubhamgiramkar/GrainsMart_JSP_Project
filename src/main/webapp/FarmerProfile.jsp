<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Profile</title>
<link rel="stylesheet" href="css/FarmerProfile.css">
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

try{String username=(String)session.getAttribute("username");
String name,id,email,address,mobile;
	   
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from farmer where f_username='"+ username +"'");
	    while(rs.next()){
	    	name=rs.getString("f_Name");
	    	id=rs.getString("f_id");
	    	email=rs.getString("f_email");
	    	address=rs.getString("f_Address");
	    	mobile=rs.getString("f_MobileNo");
	    	
	    %>
	    


<div class="userprofile">
  <h2>Profile</h2>
  <p class="point"><b>Id:</b><%=rs.getString("f_id")%> </p>
      <p class="point"><b>User Name:</b><%=rs.getString("f_username")%> </p>
      <p class="point"><b>Name:</b><%=rs.getString("f_Name")%></p>
      <p class="point"><b>Email:</b><%=rs.getString("f_email")%></p>
      <p class="point"><b>Mobile Number:</b><%=rs.getString("f_MobileNo")%> </p>
      <p class="point"><b>Address:</b><%=rs.getString("f_Address")%> </p>
      <button class="ProfileBtn"><a href="farmer_dash.jsp">OK</a></button>
</div><% }
}catch(Exception e){
	    	out.print(e);
	    }  
%>
</section>
</body>
</html>