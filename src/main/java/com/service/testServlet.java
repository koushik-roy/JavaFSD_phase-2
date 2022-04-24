package com.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class testServlet
 */
@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc_database")
	private DataSource dataSource;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//out.println("hello");
		
		Connection con=null;
		ResultSet rs=null;
		Statement st=null;
				
		try {
			  Class.forName("com.mysql.jdbc.Driver");
			  String JdbcURL = "jdbc:mysql://localhost:3306/school_database";
		      String Username = "root";
		      String password = "root";
		      con = DriverManager.getConnection(JdbcURL, Username, password);
		      st=con.createStatement();
			
			rs=st.executeQuery("select * from student_list");
			
			while(rs.next()) {
				//String name=rs.getString(2);
				out.println(rs.getString(2)+"</br>");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("error");
		}
		
		
	}

}
