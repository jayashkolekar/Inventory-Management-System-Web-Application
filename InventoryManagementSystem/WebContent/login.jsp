<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	String name;
String userid=request.getParameter("usr"); 
session.putValue("userid",userid); 
String passwd=request.getParameter("passwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(5).equals(passwd)) 
{ 
out.println("welcome "+rs.getString(2));
out.println("<a href=\"index.html\">Home</a>");
} 
else 
{ 
out.println("Invalid password try again"); 
out.println("<a href=\"login.html\">Back</a>");
} 
} 
else 
%>
</body>
</html>