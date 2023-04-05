<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet"  href="css/riseTicketStyle.css">
	<link rel="stylesheet"  href="css/all.css">
	<title>Rise a Ticket</title>
</head>

<body>

	<div class="container">
		<div class="heading">Rise a Ticket<p style="font-size:18px; font-family:Courier New";> We will reply to you as soon as possible.</p></div>
		
		<form action="riseTicketServlet" method = "post">
			<div class="card-details">
				<div class="card-box">
					<span class="details">ID Number</span>
					<input type="text" name = "itNo" placeholder="Enter your IT Number">
				</div>
				<div class="card-box">
					<span class="details">Name</span>
					<input type="text" name = "name" placeholder="Enter your Name">
				</div>
				<div class="card-box">
					<span class="details">Email</span>
					<input type="text" name = "email" placeholder="Enter your Email">
				</div>
				<div class="card-box">
					<span class="details" >Faculty</span><br>
					<select name = "faculty" style="height:45px; border-radius:8px";>
						<option>Faculty of Computing</option>
						<option>Faculty of Business</option>
						<option>Faculty of Engineering</option>
						<option>Faculty of Humanities and Science</option>
					</select>
				</div>
				
				<div class="card-box">
					<span class="details" >Year</span><br>
					<select name = "year" style="height:45px; width: 45px; border-radius:8px";>
						<option>1 </option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</div>
				<div class="card-box">
					<span class="details">Message</span><br> 
						<textarea rows="4" cols="50" style="height:60px; border-radius:8px;" name = "description">Type your message here..</textarea>			
				</div>
				<div class="button"><br>
					<input type="submit" name = "submit" value="Submit">
					<input type="reset" name = "reset" value="Reset">
				</div>
		</form>
	</div>
	</div>
</body>
