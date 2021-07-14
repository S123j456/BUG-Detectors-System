<%@ page import ="java.sql.*" %>
<%
    
String f1 = request.getParameter("f1");
String to=request.getParameter("to");
String from = request.getParameter("from");
String subject = request.getParameter("subject");
String message = request.getParameter("message");
String tested = request.getParameter("tested");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into employee request(f1 ,to, from, subject, message,tested) values ('" + f1 + "','" + to + "','" + from + "','" + subject + "','" + message + "', '"+tested+"')");
if(i>=1)
{
	response.sendRedirect("Employee_request.jsp");	
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