<%@ page import ="java.sql.*" %>
<%

String Fname = request.getParameter("fname");
String Lname=request.getParameter("lname");
String Gender=request.getParameter("gender");
String DOB = request.getParameter("dob");
String Qualification = request.getParameter("qualification");
String Address = request.getParameter("address");
String PhoneNo = request.getParameter("phoneno");
String MobileNo = request.getParameter("mobileno");
String EmailID=request.getParameter("emailid");
String DOJ = request.getParameter("doj");
String Designation = request.getParameter("designation");
String Maritalstatus = request.getParameter("maritalstatus");
String Password = request.getParameter("password");
String HintQuestion = request.getParameter("HintQuestion");
String HintAnswer = request.getParameter("hintanswer");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into Edit_Profile(fname ,lname, dob, qualification, address,phoneno,mobileno,emailid,doj,designation,maritalstatus,password,HintQuestion,hintanswer) values ('" + Fname + "','" + Lname + "','"+Gender+"','" + DOB + "','" + Qualification + "','" + Address + "', '"+PhoneNo+"', '" + MobileNo + "', '"+EmailID+"','"+DOJ+"','"+Designation+"','"+Password+"','"+HintQuestion+"','"+HintAnswer+"')");

if(i>=1)
{
	response.sendRedirect("Edit profile.jsp");	
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