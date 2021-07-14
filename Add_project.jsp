<%@ page import ="java.sql.*" %>
<%
    
String ProjectName = request.getParameter("project_name");

String SubmissionDate = request.getParameter("sdate");

String ClientName = request.getParameter("clientname");
String ClientAddress= request.getParameter("clientaddress");
String PhoneNo = request.getParameter("clientphone");
String EmailId= request.getParameter("clientemail");
String ProjectLead= request.getParameter("projectlead");
String DepartmentName = request.getParameter("deptname");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into project_details(project_name, sdate,  clientname, clientaddress, clientphone, clientemail, projectlead, deptname) values ('" +  ProjectName + "','" + SubmissionDate + "','" + ClientName + "', '"+ClientAddress+"', '" +PhoneNo+"', '"+EmailId+"','"+ProjectLead+"','"+DepartmentName+"')");
if(i>=1)
{
	response.sendRedirect("Addproject.jsp");	
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