<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String User = (String) session.getAttribute("User");
if (User == null) {
	response.sendRedirect("login2.jsp");
}
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<title>Floor-3</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Prompt:wght@300;500&display=swap"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>

<style>
.card {
	border: 1.5px solid #eee;
	cursor: pointer;
	font-family: 'Prompt' !important;
	width: 17vw !important;
}

.card-body {
	color: black !important;
	font-weight: 300 !important;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<jsp:include page="navbar.jsp"></jsp:include><br>
	<br>
	<br>
	<br>
	<br>
	
	
	
	<span style="display: flex;">
		<div style="display: flex; padding-left: 80px;">
			<div style="height: 33px; width: 8px; background: #2397d7;"></div>
			<div
				style="height: 19px; width: 4px; background: red; margin-left: -4px;"></div>
		</div>
		<h2 style="font-family: 'Prompt'; margin-left: 2vw; color: #000;">
			Floor-3</h2>
	</span>
	<br>
	
	
	
	<div class="row " style="margin-left: 5vw;">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/bisag" user="root" password="root" />
		<sql:query dataSource="${con}" var="rs">  
									SELECT * from lab where floor=3 ORDER BY lab ASC;  
								</sql:query>
		<c:forEach var="table" items="${rs.rows}">
			<div class="card col-md-2" style="margin-left: 1vw; margin-top: 1vw;">
				<div class="line"
					style="height: 0.4vw; background: linear-gradient(to right, #65f4cd, #4799e9); margin-left: -1vw; margin-right: -1vw"></div>
				<form action="view_labs.jsp" method="post">
					<button type="submit" style="background: none; border: none;">
						<div class="card-body">
							<h3 class="card-title">Lab ${table.lab}</h3>
							<br>
							<p class="card-text">Click Here To View Details Of Lab
								${table.lab}</p>
							<input type="hidden" name="lab_no" value="${table.lab}">
							<input type="hidden" name="floor_no" value="${table.floor}">

						</div>
					</button>
				</form>
			</div>
		</c:forEach>
		<br>
	</div>
	<br>
	<br>
	<br>


	<!-- Footer -->
	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>