<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Admin Navbar</title>

<style>
.nav-link {
	margin-left: 17px;
	font-size: 17px;
}

nav .nav-link:hover {
	color: #406cbd !important;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

.dropdown-item {
	font-size: 16px;
}
</style>
</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<a class="navbar-brand" href="Admin.jsp"
				style="letter-spacing: 0px; margin-left: 100px !important;"><img
				src="image/bisaglogo.png" style="width: 100px"></a>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

				</ul>
				<a class="nav-link" href="Admin.jsp"
					style="letter-spacing: 1px; color: #000;"><b>Home</b></a>
				<div class="dropdown">
					<button class="btn dropdown-toggle nav-link" type="button"
						id="dropdownMenuButton" data-mdb-toggle="dropdown"
						aria-expanded="false"
						style="box-shadow: none !important; font-size: 17px; margin-left: 10px; color: #000; letter-spacing: 1px; text-transform: capitalize;">

						<b>Devices</b>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton"
						style="color: #fff !important;">
						<li><a class="dropdown-item" href="add.jsp">Add Devices</a></li>
						<li><a class="dropdown-item" href="view.jsp">View Devices</a></li>
						<li><a class="dropdown-item" href="update.jsp">Update Devices</a></li>
						<li><a class="dropdown-item" href="delete.jsp">Delete Devices</a></li>
				
						
					</ul>
				</div>
				<div class="dropdown">
					<button class="btn dropdown-toggle nav-link" type="button"
						id="dropdownMenuButton1" data-mdb-toggle="dropdown"
						aria-expanded="false"
						style="box-shadow: none !important; font-size: 17px; margin-left: 10px; color: #000; letter-spacing: 1px; text-transform: capitalize;">

						<b>Labs</b>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1"
						style="color: #fff !important;">
						<li><a class="dropdown-item" href="add_labs.jsp">Add Labs</a></li>
						<li><a class="dropdown-item" href="delete_lab.jsp">Delete Labs</a></li>
						
					</ul>
				</div>
				<button type="submit" class="btn btn-danger"><a href="login2.jsp" style="font-size:16px;color:#fff !important">Log out</a></button>
				
			</div>
		</div>
	</nav>
</body>
</html>