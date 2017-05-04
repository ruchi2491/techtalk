<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="POJO.UserDetails"%>
<%@page import="DAO.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"> -->
<script type="text/javascript">
/* var counter=0;
function attendence() {
	var x = document.getElementById("myBtn").value;
	if(x=="yes")
		{
		counter++;
		}
alert("You are attending"+counter+"Tech Talks");
}

function attendenceNO() {
	var y = document.getElementById("myBtn1").value;
	if(y=="No")
		{
		alert("You are attending not attending any Tech Talks");
		}

} */
function sucess()
{
	alert("you registered sucessfully");
	}

</script>
<style type="text/css">
html {
	height: 100%;
	/*Image only BG fallback*/
	
	/*background = gradient + image pattern combo*/
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6)); 
		/* linear-gradient(to bottom, #ADB2B6, #ABAEB3); */
}

body {
	font-family: montserrat, arial, verdana;
}
table.altrowstable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
	
}
table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
.oddrowcolor{
	background-color:#d4e3e5;
}
.evenrowcolor{
	background-color:#c3dde0;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
h2 {
    color:#069;
}
</style>

<title>TechTalksTimeTable</title>
</head>
<body>
 <nav id="mainav" class="fl_right">
        <ul class="clear">
        <li><h2 class="active">Welcome ${uname}</h2></li>
         <li><a class="active" href="Login.jsp">LOGOUT</a></li>
        </ul> 
      </nav>

<h2>List of Tech Talk</h2>

<table class="altrowstable" id="alternatecolor">
<tr>
<td>DATE</td>
<td>TITLE</td>
<td>DISCRIPTION</td>
<td>PRESENTER</td>
<td>Interested to join??</td>
<td>Not Interested to join??</td>
</tr>
<%Connection con=DbUtil.getconnection();
UserDetails ud=new UserDetails();
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from techtalktimetable"); 
while(rs.next())
{%>
 <tr><td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2) %></td>
       <td><%=rs.getString(3) %></td>
       <td><%=rs.getString(4) %></td>
       
         <td style="font-size:large;"><a onclick="sucess()" href="AttendanceServlet?&date=<%=rs.getString(1)%>&title=<%=rs.getString(2)%>"/>YES</a></td>
         <td><input type="button" id="myBtn1" name="No" onClick="attendenceNO()" value="No"></td>
       
       </tr>
<%}%>  
</table>  
   </body>
</html>