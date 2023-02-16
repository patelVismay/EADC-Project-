<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
	<%
	String email, new_password, retype_new_pass;
	int count = 0;
	email = request.getParameter("email");
	new_password = request.getParameter("new_pswd");
	retype_new_pass = request.getParameter("re_new_pswd");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = stmt.executeQuery("select * from signup");

	if (new_password.equals(retype_new_pass)) {

		while (rs.next()) {
			if (email.equals(rs.getString("email"))) {

		rs.updateString("Password", new_password);
		rs.updateRow();
		out.print(
				"<h4 style=\"text-align:center;margin-top:-580px;color:green;\"\">Successfully updated password</h4>");
		RequestDispatcher rd = request.getRequestDispatcher("forget_pass.jsp");
		rd.include(request, response);
		count += 1;
		break;
			}

		}
		if (count == 0) {
			out.print(
			"<h5 style=\"text-align:center;margin-top:-580px;color:red;\">Account with this email id does not exists.</h5>");
			RequestDispatcher rd = request.getRequestDispatcher("forget_pass.jsp");
			rd.include(request, response);

		}
	}

	else {
		out.print("<h5 style=\"text-align:center;margin-top:-580px;color:red;\">Passwords are not match</h5>");
		RequestDispatcher rd = request.getRequestDispatcher("forget_pass.jsp");
		rd.include(request, response);

	}
	%>
</body>
</html>
