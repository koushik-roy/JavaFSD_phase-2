<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Admin Login</h1>
	<form action="MainServlet" method="post">
		Name: <input type="text" placeholder="Enter name" name="name">
		<br/>
		Password: <input type="password" placeholder="enter password" name="password">
		<input type="submit" value="login">
		
	</form>
</body>
</html>