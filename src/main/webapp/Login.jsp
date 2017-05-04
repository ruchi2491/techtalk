<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="css/login.css">
</head>
<body background="images\log.jpg">

<form action="LoginServleT" method="post">
  


<div class="ribbon"></div>
  <div class="login">
  <h1>Let's get started.</h1>
  <p>This will be an amazing experience</p>
    <div class="input">
      <div class="blockinput">
      
       <input type="text" placeholder="Enter Email here" name="emailId" required>
     <!--    <i class="icon-envelope-alt"></i><input type="mail" placeholder="Email"> -->
      </div>
      <br>
      <div class="blockinput">
         <input type="password" placeholder="Enter password here" name="password" required maxlength="8">
   <!--      <i class="icon-unlock"></i><input type="password" placeholder="Password">
 -->      </div>
    </div>
   <button type="submit">Login</button>
   
  </div>
  
  <hr>
 


 
</form>




</body>
</html>