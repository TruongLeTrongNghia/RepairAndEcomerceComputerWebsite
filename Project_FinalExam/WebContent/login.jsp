<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/loginStyle.css">
<title>Login Form</title>
</head>
<body>
<body>
	<div class="container">
		<div id="loginForm" class="form-box active">
			<h2>Login</h2>
			<form action="LoginServlet" method="post">
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						id="username" name="username" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" class="form-control" required>
				</div>
				<button type="submit" class="btn">Login</button>
				<p class="switch-text">
					Don't have an account? <span onclick="toggleForm()">Sign up</span>
				</p>
			</form>
		</div>
		<div id="registerForm" class="form-box">
			<h2>Register</h2>
			<form action="RegisterServlet" method="post">
				<div class="form-group">
					<label for="newUsername">Username</label> <input type="text"
						id="newUsername" name="newUsername" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="newEmail">Email</label> <input type="email"
						id="newEmail" name="newEmail" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="newPassword">Password</label> <input type="password"
						id="newPassword" name="newPassword" class="form-control" required>
				</div>
				<button type="submit" class="btn">Sign Up</button>
				<p class="switch-text">
					Already have an account? <span onclick="toggleForm()">Log in</span>
				</p>
			</form>
		</div>
	</div>
	<script src="js/loginScript.js"></script>
</body>
</html>