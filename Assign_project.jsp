<%@ page import ="java.sql.*" %>
<%
    
String ProjectName = request.getParameter("project_name");
String UserId = request.getParameter("userid");
String Role = request.getParameter("role");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into assign_project(project_name,userid, role) values ('" + ProjectName + "','"+UserId+"','" + Role+ "')");

if(i>=1)
{
	response.sendRedirect("Assign project.jsp");	
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