<%@ page import ="java.sql.*" %>
<%
    
String Bug_Name=request.getParameter("bug_name");
String Bug_Type=request.getParameter("bug_type");
String Bug_Level = request.getParameter("bug_level");
String Priority = request.getParameter("priority");
String ProjectName = request.getParameter("pname");
String TesterCode = request.getParameter("testercode");
String Bug_Date = request.getParameter("bugdate");
String Employeecode = request.getParameter("e_code");
String Status=request.getParameter("status");
String BugRectifieddate =request.getParameter("bug_rectifieddate");
String Status1=request.getParameter("status1");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into bug_report(bug_name, bug_type, bug_level, priority,pname,testercode,bugdate,e_code,status,bug_rectifieddate,status1) values ('"+Bug_Name+"','" + Bug_Type + "','" + Bug_Level + "','"+Priority+"','"+ProjectName+"','"+ TesterCode+"','" + Bug_Date + "', '"+Employeecode+"', '" + Status+ "','"+BugRectifieddate+"','"+Status1+"')");

if(i>=1)
{
	response.sendRedirect("Assign Bug.jsp");	
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