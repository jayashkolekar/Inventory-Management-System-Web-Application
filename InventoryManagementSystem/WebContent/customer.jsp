<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Record</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	out.println("<h1>Customers</h1><br/>");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from customer"); 
String text="";
text="<table border=1><tr><td>User ID</td><td>First Name</td><td>Last Name</td><td>Email</td><td>Address</td><td>Mobile</td><td>Category</td><td>Product</td><td>Bill</td></tr>";
while(rs.next()) 
{ 
text=text+"<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>";
} 
text=text+"</table>";
out.println("<h3>"+text+"</h3>");
%>
<a href="customer.html">Back</a>
</body>
</html>