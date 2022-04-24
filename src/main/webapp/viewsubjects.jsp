<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects</title>
</head>
<body>
<h2>Subjects</h2>
<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from subject_list");
%>
	<table border="1">
		<tr>
			<td>Subjects</td>
			<% while (rs.next()){ %>
		<tr>
			<td><%= rs.getString(2) %></td>
		</tr>
		<%} %>
	</table>

</body>
</html>