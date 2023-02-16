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
<title>View Devices | Admin</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet" href="https://static.fontawesome.com/css/fontawesome-app.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
<style>
.row {
	margin-left: 4vw !important;
}

.card {
	margin-left: 4vw !important;
	border: 1px solid #eee !important;
}
.nav-pills{
margin-left:23vw;}
.nav-pills .nav-link{
font-size:17px;
text-transform:capitalize;}
</style>
</head>

<body>

<!-- Navbar -->
<jsp:include page="admin_navbar.jsp"></jsp:include><br><br><br><br>
	<h2 style="text-align: center; font-family: calibri; font-weight: 700; margin-bottom: -10px;color:black;">View Devices</h2><br><br><br>
<!-- Desktop -->
	<c:catch var="exception">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/bisag" user="root" password="root"
			scope="request" />
</c:catch>
<!-- Pills navs -->
<ul class="nav nav-pills mb-3" id="ex1" role="tablist">
  <li class="nav-item" role="presentation">
    <a
      class="nav-link active"
      id="ex1-tab-1"
      data-mdb-toggle="pill"
      href="#ex1-pills-1"
      role="tab"
      aria-controls="ex1-pills-1"
      aria-selected="true"
      >Floor 1</a
    >
  </li>
  <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-2"
      data-mdb-toggle="pill"
      href="#ex1-pills-2"
      role="tab"
      aria-controls="ex1-pills-2"
      aria-selected="false"
      >Floor 2</a
    >
  </li>
  <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-3"
      data-mdb-toggle="pill"
      href="#ex1-pills-3"
      role="tab"
      aria-controls="ex1-pills-3"
      aria-selected="false"
      >Floor 3</a
    >
  </li>
    <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-4"
      data-mdb-toggle="pill"
      href="#ex1-pills-4"
      role="tab"
      aria-controls="ex1-pills-4"
      aria-selected="false"
      >Floor 4</a
    >
  </li>
    <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-5"
      data-mdb-toggle="pill"
      href="#ex1-pills-5"
      role="tab"
      aria-controls="ex1-pills-5"
      aria-selected="false"
      >Floor 5</a>
  </li>
   </li>
    <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-6"
      data-mdb-toggle="pill"
      href="#ex1-pills-6"
      role="tab"
      aria-controls="ex1-pills-6"
      aria-selected="false"
      >Floor 6</a>
  </li>
</ul>
<br>
<!-- Pills content -->
<div class="tab-content" id="ex1-content">
  <div
    class="tab-pane fade show active"
    id="ex1-pills-1"
    role="tabpanel"
    aria-labelledby="ex1-tab-1"
  >
  	<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=101
</sql:query>
		<h3>
			<i
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 101
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=102
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 102
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=103
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 103
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=104
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 104
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
	    <c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=105
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 105
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=106
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 106
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=107
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 107
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=108
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 108
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=109
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 109
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=1 and Lab_no=110
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 110
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
  
  
  
  
  <div class="tab-pane fade" id="ex1-pills-2" role="tabpanel" aria-labelledby="ex1-tab-2">
   <c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=201
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 201
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=202
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 202
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=203
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 203
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=204
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 204
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=205
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 205
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=206
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 206
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=207
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 207
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=208
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 208
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=209
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 209
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=2 and Lab_no=210
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 210
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
  
  
  
  <div class="tab-pane fade" id="ex1-pills-3" role="tabpanel" aria-labelledby="ex1-tab-3">
<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=301
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 301
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=302
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 302
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=303
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 303
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=304
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 304
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=305
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 305
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=306
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 306
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=307
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 307
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=308
</sql:query>
		<h3>
			<i
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 308
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=309
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 309
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=3 and Lab_no=310
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 310
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
  
  
  
   <div class="tab-pane fade" id="ex1-pills-4" role="tabpanel" aria-labelledby="ex1-tab-4">
   <c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=401
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 401
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=402
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 402
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=403
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 403
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		
	    <c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=404
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 404
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=405
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 405
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=406
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 406
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=407
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 407
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=408
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 408
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=409
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 409
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=4 and Lab_no=410
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 410
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
  
  
  
   <div class="tab-pane fade" id="ex1-pills-5" role="tabpanel" aria-labelledby="ex1-tab-5">
   <c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=501
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 501
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=502
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 502
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=503
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 503
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=504
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 504
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=505
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 505
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=506
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 506
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=507
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 507
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=508
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 508
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=509
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 509
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=5 and Lab_no=510
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 510
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
  
  
  
   <div class="tab-pane fade" id="ex1-pills-6" role="tabpanel" aria-labelledby="ex1-tab-6">
<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=601
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 601
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=602
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 602
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=603
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 603
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=604
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 604
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=605
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 605
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
		
		
		
		<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=606
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 606
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=607
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 607
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=608
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 608
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=609
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 609
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
			
			
			
			<c:catch var="exception">
		<sql:query dataSource="${con }" var="display">
select * from data where Floor_no=6 and Lab_no=610
</sql:query>
		<h3>
			<i 
				style="margin-left: 7vw; font-size: 25px; margin-top: 8px;"></i>
			&nbsp;&nbsp;Lab 610
		</h3>

		<div class="row">

			<c:forEach var="rs" items="${display.rows }">
				<div class="card first col-md-3" style="margin-top: 40px;">
					<div class="card-body">${rs.specifications}</div>
				</div>
			</c:forEach>
		</div>
	</c:catch><br><br>
  </div>
</div>
<!-- Pills content -->
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>