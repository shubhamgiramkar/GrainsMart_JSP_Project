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
    <title>Order Now</title>
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
<h2 style="text-align:center;">Customer Detail</h2>
  <!--  <form action="removegrain.jsp" method="POST"><br>
    <p><b>Customer Detail</b></p>
    <input type="number" name="c_id" placeholder="Enter Customer Id" required min="1"></input>
    
    <input type="submit" name="service_p_btn" value="Delete"></input>
      </form>-->
  <div class="mb" id="mb" >
   
<table>
          
	    <tr>
		
		<th>Customer Id</th>
		<th>Username</th>
		<th>Name</th>
        <th>Email</th>
        <th>Mobile Number</th>
         <th>Address</th>
        </tr>
        <%String username=(String)session.getAttribute("username");
		String f_id="";
		String c_id="";%>
			<%
			try{
				
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
		           Statement st=conn.createStatement();
		           ResultSet rs1=st.executeQuery("select * from farmer where f_username='"+ username +"'");
		   	    while(rs1.next()){
		   	    	 f_id=rs1.getString("f_id");
		   	    }
		           ResultSet rs=st.executeQuery("select * from order1 where f_d='"+f_id+"'");
		           while(rs.next()){
		        	   c_id=rs.getString("c_id");
		        	   ResultSet rs2=st.executeQuery("select * from customer where c_id='"+c_id+"'");
                 while(rs2.next()){
			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				
				<td><%=rs2.getString("c_id")%></td>
				<td><%=rs2.getString("c_username")%></td>
				<td><%=rs2.getString("c_Name")%></td>
                <td><%=rs2.getString("c_email")%></td>
                <td><%=rs2.getString("c_MobileNo")%></td>
                <td><%=rs2.getString("c_Address")%></td>
               
			</tr>
      
			<% 
                 }}}catch(Exception e){
					//out.print(e);
					}
				
        
			%>
    <!--   <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="farmer_dash.jsp">Close Table</button>-->
		</table></div>
</section>
</body>
 
</html>