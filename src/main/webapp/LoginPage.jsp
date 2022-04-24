<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
	<h1 style="text-align: center; margin-top: 2em;">Admin Login</h1>
	<div class="container">
	<form action="MainServlet" method="post">
		Name: <input type="text" placeholder="Enter name" name="name">
		<br/>
		Password: <input type="password" placeholder="enter password" name="password">
		<input type="submit" value="login" class="button">	
	</form>
	</div>
</body>
</html>