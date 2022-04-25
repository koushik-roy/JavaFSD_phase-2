<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students of class 4</title>

</head>
<body>
	<h3 style="text-align: center; margin-top: 2em;">Students of Class 4:</h3>
	<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_database", "root", "root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select first_name , last_name from student_list where class=4");
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
	<table	border="1" style="width: 50%; margin: auto; padding: 10px">
		<tr><th>Names</th></tr>
				
			<c:forEach var="name" items="${names}">
			<tr><td>${name}</td></tr>
			</c:forEach>
		
	</table>
</body>
</html>