<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receipt</title>
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
String address=request.getParameter("address");
String mob=request.getParameter("mob");
String category=request.getParameter("caname"); 
String product=request.getParameter("prname"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
rs=st.executeQuery("select * from "+category+" where name='"+product+"'"); 
if(rs.next()) 
{ 
String price=rs.getString(3); 
int i=st.executeUpdate("insert into customer values ('"+user+"','"+fname+"','"+lname+"','"+email+"','"+address+"','"+mob+"','"+category+"','"+product+"','"+price+"')"); 
out.println("<h1>Success</h1><br/>");
out.println("<h2>Receipt</h2><br/>");
out.println("User ID: "+user);
out.println("<br/>Name: "+fname+" "+lname);
out.println("<br/>Mobile: "+mob);
out.println("<br/>Product Category: "+category);
out.println("<br/>Product Name: "+product);
out.println("<br/>Bill: "+price);
} 
else 
{
out.println("product does not exist");
}
%>
</body>
</html>