<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->

<link rel="stylesheet" href="css/login1.css">

</head>
<body>

	<form action="Login_logic.jsp" method="post"
		style="background: none !important;">
		<div class="main" style="margin-top: 25px;">
			<section class="sign-in">
				<div class="container" style="box-shadow: none !important;">
					<div class="signin-content">
						<div class="signin-image">
							<figure>
								<img src="image/signin.jpg">
							</figure>
							<a href="signup2.jsp" class="signup-image-link">Create an
								account</a>
						</div>

						<div class="signin-form">
							<h2 class="form-title">Login</h2>
							<form method="POST" class="register-form" id="login-form">
								<div class="form-group">
									<label for="your_name"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
										type="text" name="name" placeholder="Your Name" />
								</div>
								<div class="form-group">
									<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
										type="password" name="passwd" placeholder="Password" />
								</div>
								<div class="form-group">
									<a href="forget_pass.jsp" class="label-agree-term">Forget
										Password?</a>

								</div>
								<div class="form-group form-button">
									<input type="submit" name="signin" id="signin"
										class="form-submit" value="Log in" />
								</div>
							</form>
							<div class="social-login">
								<span class="social-label">Or login with</span>
								<ul class="socials">
									<li><a href="https://www.facebook.com/"><i
											class="display-flex-center zmdi zmdi-facebook"></i></a></li>
									<li><a href="https://twitter.com/i/flow/login"><i
											class="display-flex-center zmdi zmdi-twitter"></i></a></li>
									<li><a href="https://www.google.co.in/"><i
											class="display-flex-center zmdi zmdi-google"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<!-- JS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="js/main.js"></script>
</body>
</html>