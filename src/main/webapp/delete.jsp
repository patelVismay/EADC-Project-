<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Delete Device | Admin</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6519af718f.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">


<style>
.card {
	box-shadow: none;
}
</style>
</head>
<body>


<!--- Navbar --->
<jsp:include page="admin_navbar.jsp" /><br><br><br><br>
	
	<h2 style="text-align: center; font-family: calibri; font-weight: 700; margin-bottom: -10px;">Delete Devices</h2>
	<section class="vh-100">
		<div class="container h-100">
			<div class="row d-flex justify-content-center align-items-center h-10">
				<div class="col-xl-9">
					<div class="card" style="border-radius: 15px;">
						<div class="card-body">
							<form action="delete_logic.jsp">								
								<div class="row align-items-center py-3">
									<div class="col-md-3 ps-5">

										<h6 class="mb-0">Lab number</h6>

									</div>
									<div class="col-md-9 pe-5">

										<input type="number" class="form-control form-control-lg" name="ln">

									</div>
								</div>
								<div class="row align-items-center py-3">
									<div class="col-md-3 ps-5">

										<h6 class="mb-0">Device name</h6>

									</div>
									<div class="col-md-9 pe-5">

										<input type="text" class="form-control form-control-lg" name="dname">

									</div>
								</div>								
								<div class="px-1 py-4" style="margin-left: 300px;">
									<button type="submit" class="btn btn-primary btn-lg">Delete Device</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
</html>