<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="error1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us Logic | Admin</title>
</head>
<body>

	<%
	String email, name, phno, sub, cmt;
	name = request.getParameter("name");
	email = request.getParameter("email");
	phno = request.getParameter("phno");
	sub = request.getParameter("subject");
	cmt = request.getParameter("comment");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
	PreparedStatement p = con.prepareStatement("insert into contact values(?,?,?,?,?)");

	p.setString(1, name);
	p.setString(2, email);
	p.setString(3, phno);
	p.setString(4, sub);
	p.setString(5, cmt);

	p.executeUpdate();
	RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
	rd.forward(request, response);
	%>

</body>
</html>