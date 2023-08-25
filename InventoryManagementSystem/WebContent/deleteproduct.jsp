<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE PRODUCT</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String productid=request.getParameter("pid"); 
session.putValue("pid",productid);  
String category=request.getParameter("category");  
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("delete from "+category+" where pid='"+productid+"'"); 
out.println("<h1>Product Deleted Successfully<h1><br/>");
out.println("Product ID: "+productid);
out.println("<br/>Product Category: "+category);
%>
<a  href="indexa.html">Home</a>
</body>
</html>