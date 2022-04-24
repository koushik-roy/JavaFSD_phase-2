<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
	<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select first_name , last_name from student_list where class=1");
	%>
	
	<%
		List<String> names=new ArrayList<>();
		while(rs.next()){
		String fname=rs.getString(1);
		String lname=rs.getString(2);
		String name=fname+" "+lname;
		names.add(name);
		}
		pageContext.setAttribute("names", names);
	%>
	<ul>		
			<c:forEach var="name" items="${names}">
			<li>${name}</li>
			</c:forEach>
	</ul>
</body>
</html>