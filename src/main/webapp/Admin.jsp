<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page
	import="java.sql.PreparedStatement, java.sql.Connection, java.sql.DriverManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Here</title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet" href="https://static.fontawesome.com/css/fontawesome-app.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">

<style>
body {
	font-family: 'Poppins';
}

th {
	font-weight: 700 !important;
}

td, th {
	text-align: center;
}
</style>
</head>

<body>
	<jsp:include page="admin_navbar.jsp" /><Br>
	<br>
	<br>
	<br>
	<h3 style="font-weight: 700; margin-left: 1.4vw;">Dashboard</h3>
	<br>
	
	
	
	<div style="display: flex;">
		<div
			style="display: flex; margin-left: 1.4vw; background: linear-gradient(45deg, #2ed8b6, #59e0c5); width: 22%; padding: 20px 20px 20px 20px; border-radius: 13px;">
			<div
				style="background: #00000033; width: 70px; height: 70px; border-radius: 100%; color: #fff;">
				<i class="far fa-user-tie"
					style="font-size: 30px !important; text-align: center; padding-top: 20px; padding-left: 22px;"></i>
			</div>
			<div>
				<h4 style="margin-left: 3vw; color: #fff; font-size: 18px;">
					Total Staff<br> <a style="font-size: 25px; line-height: 50px;">123</a>
				</h4>
			</div>
		</div>
		
		
		
		<div
			style="display: flex; margin-left: 3vw; background: linear-gradient(45deg, #ffb64d, #ffcb80); width: 22%; padding: 20px 20px 20px 20px; border-radius: 13px;">
			<div
				style="background: #00000033; width: 70px; height: 70px; border-radius: 100%; color: #fff;">
				<i class="far fa-desktop"
					style="font-size: 30px !important; text-align: center; padding-top: 20px; padding-left: 18px;"></i>
			</div>
			<div>
				<h4 style="margin-left: 3vw; color: #fff; font-size: 18px;">
					Total Devices<br> <a
						style="font-size: 25px; line-height: 50px;">
						<%
							Connection con10 = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
							Statement stmt10 = con10.createStatement();
							ResultSet rs10=stmt10.executeQuery("select count(*) from data");
							rs10.next();
							int y=rs10.getInt("count(*)");
							out.print(y);
						%>
					</a>
				</h4>
			</div>
		</div>



<a href="view_user.jsp" style="color:#fff;">
		<div
			style="display: flex; margin-left: 3vw; background: linear-gradient(45deg, #4099ff, #73b4ff); width: 22%; padding: 20px 20px 20px 20px; border-radius: 13px;">
			<div
				style="background: #00000033; width: 70px; height: 70px; border-radius: 100%; color: #fff;">
				<i class="far fa-user"
					style="font-size: 30px !important; text-align: center; padding-top: 20px; padding-left: 22px;"></i>
			</div>
			<div>
				<h4 style="margin-left: 3vw; color: #fff; font-size: 18px;">
					Total User<br> <a style="font-size: 25px; line-height: 50px;"><%
							Connection con12 = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
							Statement stmt12 = con10.createStatement();
							ResultSet rs12=stmt12.executeQuery("select count(*) from signup");
							rs12.next();
							int u=rs12.getInt("count(*)");
							out.print(u);
						%></a>
				</h4>
			</div>
		</div></a>
	
	
	
	<a href="view_query.jsp" style="color:#fff;">
	
		<div
			style="display: flex; margin-left: 3vw; background: linear-gradient(45deg, #ff5370, #ff869a); width: 22%; padding: 20px 20px 20px 20px; border-radius: 13px;">
			<div
				style="background: #00000033; width: 70px; height: 70px; border-radius: 100%; color: #fff;">
				<i class="far fa-question"
					style="font-size: 30px !important; text-align: center; padding-top: 20px; padding-left: 22px;"></i>
			</div>
			<div>
				<h4 style="margin-left: 3vw; color: #fff; font-size: 18px;">
					Total Queries<br> <a
						style="font-size: 25px; line-height: 50px;"><%
							Connection con11 = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
							Statement stmt11 = con10.createStatement();
							ResultSet rs11=stmt11.executeQuery("select count(*) from contact");
							rs11.next();
							int z=rs11.getInt("count(*)");
							out.print(z);
						%></a>
				</h4>
			</div>
		</div>
		</a>
	</div>
	<br>
	<br>
	<br>




	<!-- tables -->
	<h3 style="font-weight: 700; margin-left: 1.4vw;">Floor Details</h3>
	<br>
	<table class="table">
		<thead class="table-light"></thead>
		<tbody>
			<tr>
				<th>Floor no</th>
				<th>Desktop</th>
				<th>Laptop</th>
				<th>Network Switch</th>
				<th>Speaker</th>
				<th>Projector</th>
			</tr>
			<%
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bisag", "root", "root");
			Statement stmt = con.createStatement();
			Statement stmt1 = con.createStatement();
			Statement stmt2 = con.createStatement();
			Statement stmt3 = con.createStatement();
			Statement stmt4 = con.createStatement();
			Statement stmt5 = con.createStatement();
			ResultSet rs5 = stmt5.executeQuery("select max(Floor_no) from bisag.data");
			rs5.next();
			int x = rs5.getInt("max(Floor_no)");

			for (int i = 1; i <= x; i++) {
				ResultSet rs = stmt.executeQuery("select Floor_no,count(Device_name) from bisag.data where Floor_no =" + i
				+ " and device_name=\"desktop\";");
				ResultSet rs1 = stmt1.executeQuery(
				"select Floor_no,count(Device_name) from bisag.data where Floor_no =" + i + " and device_name=\"laptop\";");
				ResultSet rs2 = stmt2.executeQuery("select Floor_no,count(Device_name) from bisag.data where Floor_no =" + i
				+ " and device_name=\"network\";");
				ResultSet rs3 = stmt3.executeQuery("select Floor_no,count(Device_name) from bisag.data where Floor_no =" + i
				+ " and device_name=\"speaker\";");
				ResultSet rs4 = stmt4.executeQuery("select Floor_no,count(Device_name) from bisag.data where Floor_no =" + i
				+ " and device_name=\"projector\";");

				rs.next();
				rs1.next();
				rs2.next();
				rs3.next();
				rs4.next();

				out.print("<tr>");
				out.print("<td>" + i + "</td>");
				out.print("<td>" + rs.getInt("count(Device_name)") + "</td>");
				out.print("<td>" + rs1.getInt("count(Device_name)") + "</td>");
				out.print("<td>" + rs2.getInt("count(Device_name)") + "</td>");
				out.print("<td>" + rs3.getInt("count(Device_name)") + "</td>");
				out.print("<td>" + rs4.getInt("count(Device_name)") + "</td>");
				out.print("</tr>");

			}
			%>

		</tbody>
	</table>
</body>
</html>