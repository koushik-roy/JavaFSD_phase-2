<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teachers</title>
</head>
<body>
	<h2>Teachers</h2>
	<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select name, Subject_name from teacher_list t join subject_list s on t.sub_id=s.idSubject_List");
%>
	<table border="1">
		<tr>
			<td>Name</td>
			<td>Subjects</td>
		</tr>
		<% while (rs.next()){ %>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
		</tr>
		<%} %>
		
	</table>
</body>
</html>