<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Admin loging page</title>

	<!--css link-->
	<link rel="stylesheet" type="text/css" href="css/Login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">


	<!-- swal library insert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">


</head>
<body>
	
<div class="container">
		

	<input type="hidden" id="status" value= <%= request.getAttribute("status") %>>
	<div class ="loginbox">
	<img src = "image/loginLogo.png" class="avatar">
	<h1>LOGIN</h1>

	<form action="adminServlet" method = "post">
		<p>User Name</p>
		<input type = "text" name = "aid"> <br><br>
		<p>Password</p>
		<input type = "password" name = "pass"><br><br>
			
		<input type = "submit" name = "submit" value = "login">
	</form>
	
	</div>
	
	
</div>
	
</body>
 <script type="text/javascript">
		var status = document.getElementById("status").value;
	
		if(status == 'failed'){
			swal("Oops!","You have entered Wrong Details","error");
		}
	</script>


</html>