<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Forget Password</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/login1.css">
<style>
.form-title {
	font-size: 35px;
}
</style>
</head>
<body>
	<form action="forget_pass_logic.jsp" method="post">

		<div class="main" style="margin-top: 25px;">
			<section class="signup">
				<div class="container">
					<div class="signup-content">
						<div class="signup-form">
							<h2 class="form-title">Forget Password</h2>
							<form method="POST" class="register-form" id="register-form">

								<div class="form-group">
									<label for="email"><i class="zmdi zmdi-email"></i></label> <input
										type="email" name="email" id="email" placeholder="Your Email" />
								</div>
								<div class="form-group">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
										type="password" name="new_pswd" id="pass"
										placeholder="New Password" />
								</div>
								<div class="form-group">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
										type="password" name="re_new_pswd" id="pass"
										placeholder="Retype New Password" />
								</div>
								<div class="form-group">
									<a href="login2.jsp" style="color:black">Go Back to Login
										</a>

								</div>

								<div class="form-group form-button">
									<input type="submit" name="signup" id="signup"
										class="form-submit" value="Change Password" />
								</div>
							</form>
						</div>
						<div class="signup-image">
							<figure>
								<img src="image/forget.jpg" alt="forget image">
							</figure>
						</div>
					</div>
				</div>
			</section>
		</div>
</body>
</html>