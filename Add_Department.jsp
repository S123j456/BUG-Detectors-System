<%@ page import ="java.sql.*" %>
<%
  
String DepartmentName = request.getParameter("dname");
String DepartmentLocation=request.getParameter("location");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into department_details(dept_name ,dept_loc ) values ('" + DepartmentName + "','" + DepartmentLocation + "')");

if(i>=1)
{
	response.sendRedirect("AddDepartment.jsp");	
}
else{
	out.print("error");
}


	

//if (i > 0) {
//session.setAttribute("userid", user);
//response.sendRedirect("welcome.jsp");
// out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
//} else {
//response.sendRedirect("index.jsp");

%>