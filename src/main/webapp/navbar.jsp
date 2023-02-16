<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String User = (String) session.getAttribute("User");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Navbar</title>


<style>
.nav-link {
	margin-left: 17px;
	font-size: 17px;
}

.nav-link:hover {
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
			<a class="navbar-brand" href="index.jsp"
				style="letter-spacing: 0px; margin-left: 100px !important;"><img
				src="image/bisaglogo.png" style="width: 100px"></a>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

				</ul>
				<a class="nav-link" href="index.jsp"
					style="letter-spacing: 1px; color: #000;"><b>Home</b></a>
				<div class="dropdown">
					<button class="btn dropdown-toggle nav-link" type="button"
						id="dropdownMenuButton" data-mdb-toggle="dropdown"
						aria-expanded="false"
						style="box-shadow: none !important; font-size: 17px; margin-left: 10px; color: #000; letter-spacing: 1px; text-transform: capitalize;">

						<b>Floor</b>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton"
						style="color: #fff !important;">
						<li><a class="dropdown-item" href="floor1.jsp">Floor 1</a></li>
						<li><a class="dropdown-item" href="floor2.jsp">Floor 2</a></li>
						<li><a class="dropdown-item" href="floor3.jsp">Floor 3</a></li>
						<li><a class="dropdown-item" href="floor4.jsp">Floor 4</a></li>
						<li><a class="dropdown-item" href="floor5.jsp">Floor 5</a></li>
						<li><a class="dropdown-item" href="floor6.jsp">Floor 6</a></li>
					</ul>
				</div>
				<a class="nav-link" href="contact.jsp"
					style="letter-spacing: 1px; color: #000;"><b>Contact-us</b></a>
				<%
				if (User == null) {
				%>
				<a href="login2.jsp"><button class="btn btn-danger"
						type="submit"
						style="font-family: calibri; font-size: 14px; font-weight: 700;">Log
						in</button></a> <a href="signup2.jsp"><button class="btn btn-primary"
						type="submit"
						style="margin-left: 1vw; font-family: calibri; font-size: 14px; font-weight: 700;">Sign
						up</button></a>



				<%
				} else {
				%>
				<a class="nav-link" href="signout.jsp"
					style="letter-spacing: 1px; color: #000;"><button
						class="btn btn-danger" type="submit"
						style="font-family: calibri; font-size: 14px; font-weight: 700;">Log
						out</button></a>
				<%
				}
				%>

			</div>
		</div>
	</nav>

</body>
</html>