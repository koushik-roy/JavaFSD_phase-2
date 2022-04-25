<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
<link type="text/css" rel="stylesheet" href="css/styles.css">
</head>
<body>
<h2 style="text-align: center; margin-top: 2em;">Students</h2>

<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student_list");
%>
	<table border="1" class="table">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
			<th>Class</th>
		</tr>
		<% while (rs.next()){ %>
		<tr>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getInt(4) %></td>
			<td><%= rs.getInt(5) %></td>
		</tr>
		<%} %>
	</table>

</body>
</html>