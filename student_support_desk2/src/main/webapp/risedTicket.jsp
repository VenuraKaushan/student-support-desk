<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rised Tickets</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/risedTicketStyle.css"> 
      
	
</head>

<style>
table, th, td {
  border:1px solid black;
  margin-left: auto;
  margin-right: auto;
}
</style>

<body>

    <header>
	
        <div class="wrapper">
            <img src="image/logo.png"  width="200" height="200">
                <ul class="menu"><br><br>
                   
                    
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
					<li><a href="#">My Profile</a></li>
                    
                </ul>
             </div>
			 
       
	<table>
	
	<tr>
		<th>Ticket ID</th>
		<th>Student ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Faculty</th>
		<th>Year</th>
		<th>Description</th>
		<th></th>
	</tr>
	
	<c:forEach var = "inq" items = "${Inquiry}" >
	
		<c:set var = "ticketID" value = "${inq.ticketID}"/>	
		<c:set var = "stdID" value = "${inq.studentID}"/>
		<c:set var ="description" value = "${inq.description}"/>
		
		<c:url value = "deleteInquiry.jsp" var = "inqDelete">
			<c:param name = "id" value = "${ticketID}"/>
			<c:param name = "stdID" value = "${stdID}"/>
			<c:param name = "dec" value = "${description}"/>
		</c:url>
	
	<tr>
		<td>${inq.ticketID}</td> 
		<td>${inq.studentID}</td>
		<td>${inq.name}</td>
		<td>${inq.email}</td>
		<td>${inq.faculty}</td>
		<td>${inq.year}</td>
		<td>${inq.description}</td>
		<td><a href = "${inqDelete}"><button>Delete inquiry</button></a></td>
	</tr>
		
		<input type = "hidden" name = "ticketID" value = "${inq.ticketID}">
	
	</c:forEach>
	
	
	</table>
			
     
        
    </header>

</body>
</html>
