<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users | Admin</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'poppins';
}
</style>
</head>
<body>
	<br>
	<br>
	<jsp:include page="admin_navbar.jsp" /><Br>
	<br>

	<h3
		style="text-align: center; font-weight: 700; margin-bottom: -10px; color: black;">View
		Users</h3>
	<br>
	<br>
	<%
	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
	Statement stmt2 = con1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs2 = stmt2.executeQuery("select * from signup");
	%>
	<table class="table align-middle mb-0 bg-white user">
		<thead>
			<tr>
				<th><b>Name</b></th>
				<th><b>Email</b></th>
				<th><b>Phone</b></th>
				<th><b>Address</b></th>

			</tr>
		</thead>
		<tbody>
			<%
			while (rs2.next()) {
				out.println("<tr>");
				out.println("<td>");
				out.println(rs2.getString(1));
				out.println("</td>");
				out.println("<td>");
				out.println(rs2.getString(2));
				out.println("</td>");
				out.println("<td>");
				out.println(rs2.getString(4));
				out.println("</td>");
				out.println("<td>");
				out.println(rs2.getString(5));
				out.println("</td>");
				out.println("</tr>");

			}
			%>
		</tbody>
	</table>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>

</html>