<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String login_type=request.getParameter("login_type");
String username=request.getParameter("user_name");
String name=request.getParameter("u_name");
String mobile_no=request.getParameter("u_mob");
String email=request.getParameter("u_email");
String add=request.getParameter("add");
String pass=request.getParameter("u_password");
String c_pass=request.getParameter("uc_password");

//compair pass and confirm pass to proceed
if(pass.equals(c_pass)){

try{
	 
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grainsmart", "root", "123");
           Statement st=conn.createStatement();
           //if 1(customer) login then insert customer data in customer table
           if(login_type.equals("1")){
           int i=st.executeUpdate("insert into customer(c_username,c_password,c_Name,c_email,c_MobileNo,c_Address)values('"+username+"','"+pass+"','"+name+"','"+email+"','"+mobile_no+"','"+add+"')");
           response.sendRedirect("account.jsp");
             
             } //if 2(farmer) login then insert farmer data in farmer table
           else if(login_type.equals("2")){
                 int i=st.executeUpdate("insert into farmer(f_username,f_password,f_Name,f_email,f_MobileNo,f_Address)values('"+username+"','"+pass+"','"+name+"','"+email+"','"+mobile_no+"','"+add+"')");
                 response.sendRedirect("account.jsp");
             }
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
}else{
	
	response.sendRedirect("InvalidCPass.html");
}
 %>