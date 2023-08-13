<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String grain_type=request.getParameter("grain_type");
String variety=request.getParameter("variety");
String g_price=request.getParameter("g_price");
String g_stock=request.getParameter("g_stock");
String username=(String)session.getAttribute("username");
String farmer_id="";
try{
	  
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
           Statement st=conn.createStatement();
           ResultSet rs=st.executeQuery("select f_id from farmer where f_username='"+username+"'");
   	    while(rs.next()){
   	    	 farmer_id=rs.getString("f_id");
   	    	 out.print(farmer_id);
   	            }
           int i=st.executeUpdate("insert into grains(grains_name,grains_variety,grains_price,grains_stock,f_id)values('"+grain_type+"','"+variety+"','"+g_price+"','"+g_stock+"','"+farmer_id+"')");
           response.sendRedirect("account.jsp");
             
} catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}         

       

 %>