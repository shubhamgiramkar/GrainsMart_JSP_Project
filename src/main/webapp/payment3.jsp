<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>




<%

Date today = new Date();


DateFormat shortDF = DateFormat.getDateInstance(DateFormat.SHORT);
String date=shortDF.format(today);
out.print(date);


%>







