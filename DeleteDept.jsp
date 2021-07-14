<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
String DepartmentNo = request.getParameter("dno");
String DepartmentName = request.getParameter("dname");
String DepartmentLocation=request.getParameter("location");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
Statement statement = con.createStatement();
	int DeleteDept = statement.executeUpdate("delete from department_details where dept_no=");
 
	if (DeleteDept > 0) {
		response.sendRedirect("ViewDepartment.jsp");
	} else {
		response.sendRedirect("ViewDepartment.jsp");
	}
%>




