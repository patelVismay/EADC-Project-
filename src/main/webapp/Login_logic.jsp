<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Logic | Admin</title>
</head>
<body>

	<%
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
	String name, pass, admin_name, admin_pass;
	int count = 0, count1 = 0;
	name = request.getParameter("name");
	pass = request.getParameter("passwd");
	String User;
	Statement stmt = con.createStatement();

	ResultSet rs = stmt.executeQuery("select * from signup");

	Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	String selectQ1 = "select * from `signup`";
	ResultSet rs1 = stmt1.executeQuery(selectQ1);

	while (rs.next()) {

		if (name.equals(rs.getString("Name")) && pass.equals(rs.getString("Password"))) {

			count = 1;
		} else if (name.equals("bisag") && pass.equals("admin")) {
			count = 2;
		}

	}

	while (rs1.next()) {
		if (rs1.getString("Name").equals(name)) {
			session.setAttribute("User", rs1.getString("Name"));

			count1 = 1;

			break;
		}
	}

	if (count == 1 && count1 == 1) {
		response.sendRedirect("index.jsp");
	}

	if (count == 0) {
		
		RequestDispatcher rd1 = request.getRequestDispatcher("login2.jsp");
		rd1.include(request, response);
		out.print(
				"<h4 style=\"color:red;margin-top:-475px; text-align: center;margin-left:400px;\">Entered Username Or Password Is Incorrect</h4>");
	}
	if (count == 2) {
		response.sendRedirect("Admin.jsp");
	}
	%>

</body>
</html>