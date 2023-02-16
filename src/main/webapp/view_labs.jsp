<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"crossorigin="anonymous"></script>
<title>View All Labs</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet" href="https://static.fontawesome.com/css/fontawesome-app.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">

<style>
h3 {
	font-family: 'Raleway' !important;
	font-weight: 700;
	color: #000;
	padding-left: 8vw !important;
}

.h3-hr {
	margin-left: 8vw !important;
}

.row {
	margin-left: 4vw !important;
}

.card {
	margin-left: 4vw !important;
	border: 1px solid #eee !important;
}
</style>

</head>
<body>

<!-- Navbar -->
<jsp:include page="navbar.jsp"></jsp:include><br><br><br><br><br>
	
<!-- Desktop -->
	<c:catch var="exception">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/bisag" user="root" password="root"
			scope="request" />
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=? and Lab_no=? and Device_name="desktop"
		<sql:param value="${param.floor_no}"></sql:param>
		<sql:param value="${param.lab_no}"></sql:param>

</sql:query>
		<h3>
			<i class="fas fa-solid fa-desktop"
				style="margin-left: 0.4vw; font-size: 25px; margin-top: 8px; margin-left: 15px;"></i>
			&nbsp;&nbsp;Desktop
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch>
	<br>
	<br>
	
	
<!-- Laptop -->
	<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=? and Lab_no=? and Device_name="laptop"
<sql:param value="${param.floor_no}"></sql:param>
		<sql:param value="${param.lab_no}"></sql:param>
</sql:query>
		<h3>
			<i class="fas fa-solid fa-laptop"
				style="margin-left: 0.4vw; font-size: 25px; margin-top: 8px; margin-left: 15px;"></i>
			&nbsp;&nbsp;Laptop
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch>
	<br>
	<br>
	
<!-- Network Switch -->
	<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=? and Lab_no=? and Device_name="network"
<sql:param value="${param.floor_no}"></sql:param>
		<sql:param value="${param.lab_no}"></sql:param>
</sql:query>
		<h3>
			<i class="bi bi-router-fill"
				style="margin-left: 0.4vw; font-size: 30px; margin-top: 8px; margin-left: 15px;"></i>
			&nbsp;&nbsp;Network switch
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch>
	<br>
	<br>
	
	
<!-- Speaker -->
	<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=? and Lab_no=? and Device_name="speaker"
<sql:param value="${param.floor_no}"></sql:param>
		<sql:param value="${param.lab_no}"></sql:param>

</sql:query>
		<h3>
			<i class="bi bi-speaker-fill"
				style="margin-left: 0.4vw; font-size: 30px; margin-top: 8px; margin-left: 15px;"></i>
			&nbsp;&nbsp;Speaker
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch>
	<br>
	<br>
	
	
<!-- Projector -->
	<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=? and Lab_no=? and Device_name="projector"
<sql:param value="${param.floor_no}"></sql:param>
		<sql:param value="${param.lab_no}"></sql:param>
</sql:query>
		<h3>
			<i class="bi bi-projector-fill"
				style="margin-left: 0.4vw; font-size: 30px; margin-top: 8px; margin-left: 15px;"></i>
			&nbsp;&nbsp;Projector
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
		<br>
		<br>
	</c:catch>
	<br>
	<br>
<%
String floor = request.getParameter("floor_no");
	if(Integer.parseInt(floor)==1 ||Integer.parseInt(floor)==2 ||Integer.parseInt(floor)==3){
%>
<div class="card mb-3" style="max-width: 500px;border:none !important;box-shadow:none !important;float:right;margin-right:5vw !important;">
  <div class="row g-0">
    <div class="col-md-4">
      <img
        src="image/RE.jpeg"
        alt="Reporting Engineer"
        class="img-fluid rounded-start" style="border-radius:49px !important;height:80px;width:80px;margin-top:1.70vw;margin-left:2vw;"
      />
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><b>Reporting Engineer<br> Sidhdharth Patel<br>Phone: 1234567890</b></h5>
             
      </div>
    </div>
  </div>
</div>
<br><br><br><br><br><br>
<%} %>


<%
if(Integer.parseInt(floor)==4 ||Integer.parseInt(floor)==5 ||Integer.parseInt(floor)==6){
%>
<div class="card mb-3" style="max-width: 500px;border:none !important;box-shadow:none !important;float:right;margin-right:5vw !important;">
  <div class="row g-0">
    <div class="col-md-4">
      <img
        src="image/RE2.jpeg"
        alt="Reporting Engineer"
        class="img-fluid rounded-start" style="border-radius:49px !important;height:80px;width:80px;margin-top:1.70vw;margin-left:2vw;"
      />
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><b>Reporting Engineer<br>Punit Lalwani<br>Phone: 0987654321</b></h5>
             
      </div>
    </div>
  </div>
</div>
<br><br><br><br><br><br>
<%} %>

<!-- Footer -->
<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>