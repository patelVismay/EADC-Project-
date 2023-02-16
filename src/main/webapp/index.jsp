<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<title>Welcome to BISAG-N</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<style>
.navbar-brand {
	margin-right: 2px !important;
	margin-left: 44px;
}

body {
	overflow-x: hidden;
}

.card-title {
	font-weight: 700;
	color: #2397d7 !important;
	text-align: center;
}

.card-text {
	text-align: center;
	font-family: 'Poppins';
	font-size: 13px !important;
}


.footer {
	margin-left: 12PX;
}

.card p {
	font-size: 19px;
}

.card, img {
	border-radius: 0px !important;
	box-shadow: none !important;
}

.count h1 {
	color: #2397d7 !important;
	font-size: 64px;
	font-weight: 700;
}

.count p {
	color: #ED1651 !important;
	font-size: 23px;
	font-weight: 700;
}
</style>
<body>


<!--Navbar-->
<br><br>
<jsp:include page="navbar.jsp" />
						
	<!-- Carousel wrapper -->
	<div id="carouselExampleControls" class="carousel slide"
		data-mdb-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image/slide-one.jpg" class="d-block w-100"
					alt="Wild Landscape" />
			</div>
			<div class="carousel-item">
				<img src="image/slide-two.jpg" class="d-block w-100" alt="Camera" />
			</div>
			<div class="carousel-item">
				<img src="image/slide-three.jpg" class="d-block w-100"
					alt="Exotic Fruits" />
			</div>
			<div class="carousel-item">
				<img src="image/slide-four.jpg" class="d-block w-100"
					alt="Exotic Fruits" />
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-mdb-target="#carouselExampleControls" data-mdb-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-mdb-target="#carouselExampleControls" data-mdb-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div><br><br><br><br><br><br><br>
	
	
	<!-- About us -->
	<span style="display: flex;">
		<div style="display: flex; margin-left: 100px;">
			<div style="height: 33px; width: 8px; background: #2397d7;"></div>
			<div
				style="height: 19px; width: 4px; background: red; margin-left: -4px;"></div>
		</div>
		<h3 style="font-family: 'Poppins'; margin-left: 2vw; color: #000;">
			About <b>BISAG-N</b>
		</h3>
	</span>


	<br>
	<div style="color: #fff; margin-left: 100px;">
		<div class="card"
			style="width: 100%; background: url('image/about_bg.png'); background-repeat: no-repeat; height: 29vw; border-radius: 0px !important;">
			<div class="card-body">
				<h3 class="cards-title">BISAG-N</h3>
				<p class="card-text">
				<h4>
					Bhaskaracharya National Institute for Space Applications and Geo-<br>informatics
				</h4>
				<i>Bhaskaracharya National Institute for Space Applications and
					Geo-informatics{BISAG-N} is<br> an Autonomous Scientific
					Society registered under the Societies Registration Act, 1860 <br>under
					the MeitY, Government of India to undertake technology development
					& <br>management, research & development, facilitate National
					& International cooperation,<br> capacity building and support
					technology transfer & entrepreneurship development in area<br>
					of geo-spatial technology.
				</i> <br>
				<h4>
					BISAG-N has three main domain areas: Satellite<br>
					Communication, Geo-informatics and Geo-spatial<br> technology.
					<p style="margin-top: 30px;"></p>
					<br>
					<br>
				</h4>
				</p>

			</div>
		</div>
	</div><br><br><br><br>
	
	
	<!-- Cards -->
	<div style="background-image: url('image/pmo_bg.png'); background-repeat: no-repeat;">
		<br>
		<br> <span style="display: flex;">
			<div style="display: flex; margin-left: 170px;">
				<div style="height: 33px; width: 8px; background: #2397d7;"></div>
				<div
					style="height: 19px; width: 4px; background: red; margin-left: -4px;"></div>
			</div>
			<b><h3 style="font-family: 'Poppins'; margin-left: 2vw; color: #000;"> What <b>we do</b></h3>
			</b>
		</span><br>
		<div class="row row-cols-1 row-cols-md-3 g-4"
			style="padding-left: 12vw; padding-right: 10vw;">
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/satelite.svg" style="width: 25%;"
							class="card-img-top" alt="card1" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Satelite Communication</h5>
						<p class="card-text">To promote and facilitate the use of
							satelite broadcasting network for distant interactive training,
							education and extensions.</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/sensor.svg" style="width: 25%;"
							class="card-img-top" alt="card2" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Remote Sensing Applications</h5>
						<p class="card-text">For inventory mapping, developmental
							planning and monitoring of natural and man-made resources</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/geo.svg" style="width: 25%;" class="card-img-top"
							alt="card3" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Geo-informatics System</h5>
						<p class="card-text">To conceptualize, create and organize
							multi-purpose common digital database for sector and thematic
							applications for various user.</p>
					</div>
				</div>
			</div>

		</div>
		<br>

		<div class="row row-cols-1 row-cols-md-3 g-4"
			style="padding-left: 12vw; padding-right: 10vw;">
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/photogrammetry.svg" style="width: 25%;"
							class="card-img-top" alt="card4" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Photogrammetry</h5>
						<p class="card-text">For creation of Digital Elevation Model,
							Terrain characteristics, Resource planning etc.</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/disaster.svg" style="width: 25%;"
							class="card-img-top" alt="card5" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Disaster Management</h5>
						<p class="card-text">To Prepare geo-spatial information to
							provide necessary inputs to Government to assess and mitigate
							damage in the event of disaster.</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/softwareDevelopment.svg" style="width: 25%;"
							class="card-img-top" alt="card6" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Software Development</h5>
						<p class="card-text">To provide low-cost Decision Support
							System, Geo-informatics applications (desktop as well as web
							based) to user for wider usage.</p>
					</div>
				</div>
			</div>
		</div>


		<br>
		<div class="row row-cols-1 row-cols-md-3 g-4"
			style="padding-left: 12vw; padding-right: 10vw;">
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/technology.svg" style="width: 25%;"
							class="card-img-top" alt="card7" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Technology Transfer</h5>
						<p class="card-text">To transfer technology to a large number
							of end users.</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/global.svg" style="width: 25%;"
							class="card-img-top" alt="card8" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Global Navigation Satellite System and
							Land Survey</h5>
						<p class="card-text">For Location based services,
							Geo-referencing, Engineering Applications and Research.</p>
					</div>
				</div>
			</div>
			<div class="col col-md-4">
				<div class="card h-100">
					<center>
						<br>
						<img src="image/research.svg" style="width: 25%;"
							class="card-img-top" alt="card9" />
					</center>
					<div class="card-body">
						<h5 class="card-title">Education, Research and Training</h5>
						<p class="card-text">To provide education, research and
							training facilities to promote a number of end users through
							Academy for Geo-informatics.</p>
					</div>
				</div>
			</div>

		</div><br><br><br>
		</div>
		


   
	
	
<!-- FOOTER -->
<jsp:include page="footer.jsp" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>