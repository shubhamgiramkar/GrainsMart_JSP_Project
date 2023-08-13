<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String login_type=request.getParameter("login_type");
String username=request.getParameter("user_name");
String pass=request.getParameter("user_password");
int flag=0;
try{
	   
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
           Statement st=conn.createStatement();
           //if 1(customer) login then insert customer data in customer table
           if(login_type.equals("1")){
        	   try{
        	   ResultSet rs=st.executeQuery("select c_username,c_password from customer");
        	    while(rs.next()){
        	    	if(username.equals(rs.getString("c_username")) && pass.equals(rs.getString("c_password")))
        	    	{
        	    		session.setAttribute("user","1");
        	    		String un=rs.getString("c_username");
        	    		session.setAttribute("username",un);
        	        	response.sendRedirect("customer_dash.jsp");
        	    	} else
        	    	{
             		  flag=1;

        	    	}
        	    }
        	    if(flag==1){
        	    	response.sendRedirect("Invalid.html");

        	    }
        	   
        	   }catch(Exception e1){
        		   out.println(e1);
        		   //response.sendRedirect("login.jsp");
        	   }
             } //if 2(farmer) login then insert farmer data in farmer table
           else if(login_type.equals("2")){
        	   try{
            	   ResultSet rs=st.executeQuery("select f_username,f_password from farmer");
            	   while(rs.next()){
           	    	if(username.equals(rs.getString("f_username")) && pass.equals(rs.getString("f_password")))
           	    	{
           	    		session.setAttribute("user","2");
           	    		String un=rs.getString("f_username");
        	    		session.setAttribute("username",un);
           	        	response.sendRedirect("farmer_dash.jsp");
           	    	} else
           	    	{
                		  flag=1;

           	    	}
           	    }
           	    if(flag==1){
           	    	response.sendRedirect("Invalid.html");

           	    }
            	   }catch(Exception e1){
            		   out.println(e1);
            	   }
             }
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }

 %>