<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Logic | Admin</title>
</head>
<body>

	<%
	String email, name,address,pswd,phone;
	name = request.getParameter("name");
	email = request.getParameter("email");
	pswd = request.getParameter("pswd");
	phone= request.getParameter("phone");
	address= request.getParameter("address");
	

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
	PreparedStatement p = con.prepareStatement("insert into signup values(?,?,?,?,?)");

	p.setString(1, name);
	p.setString(2, email);
	p.setString(3, pswd);
	p.setString(4, phone);
	p.setString(5, address);
	
	

	p.executeUpdate();
	RequestDispatcher rd = request.getRequestDispatcher("login2.jsp");
	rd.forward(request, response);
	%>

</body>
</html>