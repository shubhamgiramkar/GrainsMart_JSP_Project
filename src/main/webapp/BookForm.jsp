<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>

    <%
    try{
    if(session.getAttribute("user").equals("1")){
    	String str1=request.getParameter("1");
    	String str2=request.getParameter("2");
    	String str3=request.getParameter("3");
    	String str4=request.getParameter("4");
    	String str5=request.getParameter("5");
    	String str6=request.getParameter("6");
    	String grain="";
    	if(str1!=null){
    		grain=str1;
    	}else if(str2!=null){
    		grain=str2;
    	}else if(str3!=null){
    		grain=str3;
    	}else if(str4!=null){
    		grain=str4;
    	}else if(str5!=null){
    		grain=str5;
    	}else if(str6!=null){
    		grain=str6;
    	}

    %>
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
  <div class="mb" id="mb" >
<table>
	    <tr>
		<th> Grain Id</th>
		<th>Grain Name</th>
		<th>Grain Variety</th>
		<th>Selling Price</th>
        <th>Total Stock</th>
        <th>Farmer Id</th>
        </tr>
			<%
			try{
				 
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
		           Statement st=conn.createStatement();
		           
		           ResultSet rs=st.executeQuery("select * from grains where grains_name='"+grain+"'");
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
                <td><%=rs.getString("f_id")%></td>
                <td><form action="book.jsp" method="post">
                <input type="text" name="id" value="<%=rs.getString("grains_id")%>" style="display:none">
                <input type="submit" value="Order Now"></form></td>
			</tr>
      
			<% 
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="Grains.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>
		   
	 <%  }else if(session.getAttribute("user").equals("2")){
	        	response.sendRedirect("Grains.jsp");
	   }
	   else if(session.getAttribute("user").equals("")){
	    	response.sendRedirect("account.jsp");

	   }
		   }catch(Exception e){
		   response.sendRedirect("account.jsp");
	   } %>
