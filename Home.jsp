<html>
<%
String msg=null;

msg=request.getParameter("msg");

 %>
<head>
<script type="text/javascript">
function check()
{
<%
if(request.getParameter("msg")!=null)
{
%>
var msg='Please Check your userid and password';
alert(msg);
<%
}


if(request.getParameter("msg1")!=null)
{
%>
var msg1='Permission not granted';
alert(msg1);
<%
}

%>
}

//}
</script>
</head>
<body background="https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg">   
<form method="post" action="employee_login.jsp">
<body onload="return check()"><center>
<table width="100%">
	<tr>
	<td align=""><img src="./Images/header.jpeg" height="120"></img></td>
	<td align=""><font face="arial narrow" size="10px" color="Orange"><b> BUG Detector System</b></font></td>
	</tr>
</table>
<hr>
<br><br>
<table width="80%" border=0 cellpadding=12>
<tr><td>
<p align="justify"> <font face="arial narrow"><b>
	The Project entitled BUG DETECTOR SYSTEM is a web based and internet application aimed for the tracking 
and resolution of bugs. All businesses have issues that need to be tracked and managed to resolution. Resolution 
of these issues requires the coordination of multiple individuals within and perhaps even outside the company.
This application can be used by all team members to coordinate their work and to make sure that reported bugs can 
use this application and enhancement requests wont be forgotten. In this way Tester delivers up to the minute 
project information and status to the team members everywhere to foster better communication and collaboration.
 The Online handling of reporting ensure that the project working hours will be prompt.
This also ensures well-disciplined authorization of users according to the project specification. 
Usage of this application increases the productivity and quality of the project.
</font></b></p>

</tr>
<tr>
<th colspan="5">Login Here</th>
</tr>
</thead>
<tbody>
<tr>
<td>Email Id</td>
<td><input type="text" name="uname" value="" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass" value="" /></td>
</tr>
<tr>
<td><input type="submit" value="Login" /></td>
<td><input type="reset" value="Reset" /></td>
</tr>
<tr>
<td colspan="2">If New User!! <a href="Register.jsp">Click Here</a></td>
</tr>
</table>
<br><br><br>
</center>
</body>
<jsp:include page="./footer.jsp" />   

</html>

