<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class</title>
</head>
<body>
<h2>Class</h2>
<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from class_list");
	%>
	<table border="1" style="display: inline-block;">
		<tr>
			<th>Class</th>
			<th>Time</th>
		</tr>
		<% while (rs.next()){ %>
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%=rs.getString(2)%></td>			
		</tr>
		<%} %>
	</table>
	<table border="1" style="display: inline-block;">
		<tr><th>Students</th></tr>
		<tr><td><a href="class-student/studentList1.jsp"> Click to view</a></td></tr>
		<tr><td><a href="class-student/studentList2.jsp"> Click to view</a></td></tr>
		<tr><td><a href="class-student/studentList3.jsp"> Click to view</a></td></tr>
		<tr><td><a href="class-student/studentList4.jsp"> Click to view</a></td></tr>
		<tr><td><a href="class-student/studentList5.jsp"> Click to view</a></td></tr>
		
		
	</table>

</body>
</html>