<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>
<%String username=(String)session.getAttribute("username");
		String f_id=""; 
		String g_id=request.getParameter("g_id");
		String g_price=request.getParameter("g_price");
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
		        	 if(g_id.equals(rs.getString("grains_id"))){
		        		 st.executeUpdate("update grains set grains_price ='"+g_price+"'where grains_id='"+g_id+"'"); 
		        		 response.sendRedirect("Update.jsp");
		        	 }else{
		        	 %>
		        	 <script>alert("Invalid Grain Id");
		        	 location.replace("Update.jsp");
		        	 </script>
		        	 <%
		        		 
		        	 }

			
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>