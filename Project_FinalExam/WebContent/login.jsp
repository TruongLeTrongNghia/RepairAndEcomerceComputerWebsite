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
<title>Login Form</title>
</head>
<body>
	<%
		/* String error = request.getParameter("error") == null ? "" : request.getParameter("error") + "";
		*/
		String error;
		if (request.getAttribute("error") == null) {
			error = "";
		} else {
			error = String.valueOf(request.getAttribute("error"));
		}
		String username;
		String password;
		if (request.getAttribute("username") == null) {
			username = "";
		} else {
			username = request.getParameter("username");
		}
		if (request.getAttribute("password") == null) {
			password = "";
		} else {
			password = request.getParameter("password");
		}
	%>
	<form class="container mx-auto" action="LoginServlet" method="post">
		<h1 class="text-center text-primary">Login</h1>
		<div class="form-group">
			<label for="exampleInputEmail1">Username</label> <input type="text"
				class="form-control" name="username" value="<%=username%>"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter Username">
		</div>
		<div class="form-group">
			<label>Password</label> <input type="password" class="form-control"
				name="password" value="<%=password%>" id="exampleInputPassword1"
				placeholder="Enter Password">
		</div>
		<div class="form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		<p class="text-danger"><%=error%></p>
		<button type="submit" class="btn btn-primary">Login</button>
	</form>
</body>
</html>