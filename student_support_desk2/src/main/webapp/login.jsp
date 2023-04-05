<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Univercity Education</title>
<link rel="stylesheet" type="text/css" href="css/Login.css">
</head>
<body>

	
	<div class ="loginbox">
	<img src = "image/loginLogo.png" class="avatar">
	<h1>LOGIN</h1>

	<form action = "Loginservlet" method = "post">
	
	<p>user Name</p>
	 <input type = "text" name ="uid"> <br>
	<p>password</p>
	 <input type ="password" name = "pass"><br>
	
	<input type="submit" name = "submit" value = "login">
	
	</form>
	
	</div>

</body>
</html>