<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("userid"); 
session.putValue("userid",user); 
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
String pass=request.getParameter("pass"); 
String dob=request.getParameter("dob"); 
String address=request.getParameter("address");
String mob=request.getParameter("mob");
String gender=request.getParameter("gender"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into users values ('"+user+"','"+fname+"','"+lname+"','"+email+"','"+pass+"','"+dob+"','"+address+"','"+mob+"','"+gender+"')"); 
out.println("Success");
%>
<a href="login.html">Login Now</a>
</body>
</html>