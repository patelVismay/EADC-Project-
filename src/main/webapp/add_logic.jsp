<%@page import="jakarta.security.auth.message.callback.SecretKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement, java.sql.Connection, java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Devices Logic | Admin</title>

<style>
.alert {
	padding: 20px;
	background-color: #f44336;
	color: white;
}

</style>

</head>
<body>

	<%
	try {

		String floor = request.getParameter("fn");
		String lab = request.getParameter("ln");
		String device = request.getParameter("dname");
		String devicen = request.getParameter("dn");
		String spec = request.getParameter("spec");
		String antivirus = request.getParameter("antiv");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
		PreparedStatement p = con.prepareStatement("insert into data values(?,?,?,?,?,?)");

		p.setString(1, floor);
		p.setString(2, lab);
		p.setString(3, device);
		p.setString(4, spec);
		p.setString(5, antivirus);
		p.setString(6, devicen);
		p.executeUpdate();

		
		out.println("<script type=\"text/javascript\">");
		out.println("alert(\" Added Successful\")");
		out.println("window.location.href = \"Admin.jsp\";");
		out.println("</script>");

	} catch (Exception e) {
		System.out.println(e);
		out.println("<script type=\"text/javascript\">");
		out.println("alert(\"Please check entered Details..!\")");
		out.println("window.location.href = \"Add.jsp\";");
		out.println("</script>");
	}
	%>
	
</body>
</html>