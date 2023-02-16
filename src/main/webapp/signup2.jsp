<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/login1.css">
<style>
@media screen and (min-width:1000px) {
	body {
		overflow-y: hidden;
	}
}
</style>
</head>

<body>
	<form action="Signup_logic.jsp" method="post">

		<div class="main" style="margin-top: 15px;">
			<section class="signup">
				<div class="container">
					<div class="signup-content">
						<div class="signup-form">
							<h2 class="form-title">Sign up</h2>
							<form method="POST" class="register-form" id="register-form">
								<div class="form-group">
									<label for="name"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
										type="text" name="name" id="name" placeholder="Your Name" />
								</div>
								<div class="form-group">
									<label for="email"><i class="zmdi zmdi-email"></i></label> <input
										type="email" name="email" id="email" placeholder="Your Email" />
								</div>
								<div class="form-group">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
										type="password" name="pswd" id="pass" placeholder="Password" />
								</div>
								<div class="form-group">
									<label for="phone"><i class="zmdi zmdi-phone"></i></label> <input
										type="tel" name="phone" id="phone"
										placeholder="Your Phone Number" />
								</div>
								<div class="form-group">
									<label for="address"><i class="zmdi zmdi-home"></i></label> <input
										type="text" name="address" id="address"
										placeholder="Your Address" />
								</div>
								
								<div class="form-group">
									<input type="checkbox" name="agree-term" id="agree-term"
										class="agree-term" /> <label for="agree-term"
										class="label-agree-term"><span><span></span></span>I
										agree all statements in <a href="#" class="term-service">Terms
											of service</a></label>
								</div>
								<div class="form-group form-button">
									<input type="submit" name="signup" id="signup"
										class="form-submit" value="Register" />
								</div>
							</form>
						</div>
						<div class="signup-image">
							<figure>
								<img src="image/signup.jpg" alt="sing up image">
							</figure>
							<a href="login2.jsp" class="signup-image-link">I am already
								member</a>
						</div>
					</div>
				</div>
			</section>
		</div>
</body>
</html>