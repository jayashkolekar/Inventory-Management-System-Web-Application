<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD PRODUCT</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String productid=request.getParameter("pid"); 
session.putValue("pid",productid); 
String product=request.getParameter("product"); 
String price=request.getParameter("price"); 
String category=request.getParameter("category");  
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("insert into "+category+" values ('"+productid+"','"+product+"','"+price+"','"+category+"')"); 
out.println("<h1>Product Added Successfully<h1><br/>");
out.println("Product ID: "+productid);
out.println("<br/>Product Name: "+product);
out.println("<br/>Price: "+price);
out.println("<br/>Product Category: "+category);
%>
<br/><br/>
<a  href="indexa.html">Home</a>
</body>
</html>