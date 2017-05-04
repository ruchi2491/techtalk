<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="POJO.UserDetails"%>
<%@page import="DAO.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"> -->
<style type="text/css">
html {
	height: 100%;
	/*Image only BG fallback*/
	
	/*background = gradient + image pattern combo*/
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6));
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
<!-- Javascript goes in the document HEAD -->
<script type="text/javascript">
function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){          
			if(i % 2 == 0){
				rows[i].className = "evenrowcolor";
			}else{
				rows[i].className = "oddrowcolor";
			}      
		}
	}
}
window.onload=function(){
	altRows('alternatecolor');
}
</script>

<!-- CSS goes in the document HEAD or added to your external stylesheet -->

<title>TechTalksTimeTable</title>
</head>
<body>
 <nav id="mainav" class="fl_right">
        <ul class="clear">
		<li><h2 class="active">Welcome ${uname}</h2></li>
        <li><a  href="AddTechtalk.jsp">Add Tech Talk</a></li> 
           <li><a href="Login.jsp">LOGOUT</a></li>
			        
        </ul> 
      </nav>

<h2>List Of TechTalk </h2>

<table class="altrowstable" id="alternatecolor">
<tr>
<td>DATE</td>
<td>TITLE</td>
<td>DISCRIPTION</td>
<td>PRESENTER</td>
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
       <form>
         <td><a  href="FetchTechTalk?name=<%=rs.getString(2) %>">Update Tech Talk</a></td>
         <td><a href="DeleteServlet?name=<%=rs.getString(2) %>">Delete</a></td>
         </form>   
       </tr>
<%}%>  
</table>  
   </body>
</html>