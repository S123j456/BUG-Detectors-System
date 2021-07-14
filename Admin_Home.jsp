<%@ page import ="java.sql.*" %>
<%
    
String fname = request.getParameter("fname");
String lname=request.getParameter("lname");
String dob = request.getParameter("dob");
String qualification = request.getParameter("qualification");
String address = request.getParameter("address");
String phoneno = request.getParameter("phoneno");
String mobileno = request.getParameter("mobileno");
String mailid=request.getParameter("mailid");
String doj = request.getParameter("doj");
String Designation = request.getParameter("designation");
String martialstatus = request.getParameter("martialstatus");
String password = request.getParameter("password");
String hintquestion = request.getParameter("HintQuestion");
String hintanswer = request.getParameter("hintanswer");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into employee_details(fname ,lname, DOB, qualification, address,phoneno,mobileno,emailid,doj,password,hintquestion,hintanswer) values ('" + fname + "','" + lname + "','" + dob + "','" + qualification + "','" + address + "', '"+phoneno+"', '" + mobileno + "', '"+mailid+"','"+doj+"','"+password+"','"+hintquestion+"','"+hintanswer+"')");

if(i>=1)
{
	response.sendRedirect("Admin Home.jsp");	
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