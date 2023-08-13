<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    try{
    	String user=(String)session.getAttribute("user");  
    if(user.equals("1")){
    	response.sendRedirect("customer_dash.jsp");
		   
	   }
    else if(user.equals("2")){
	        	response.sendRedirect("farmer_dash.jsp");
	   }
    else if(session.getAttribute("user").equals(null)){
    	response.sendRedirect("login.html");
    	}
    } catch(Exception e){
		 // out.print(e);
		 
		  response.sendRedirect("login.html");
    
	   }
    %>
