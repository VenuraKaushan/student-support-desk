<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Inquiries page</title>

	<!--css link-->
	<link rel="stylesheet" type="text/css" href="css/Login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>
<style>
table, th, td {
  border:1px solid black;
  margin-left: auto;
  margin-right: auto;
}
</style>
<body>

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
		
		<c:url value = "inquiryReply.jsp" var = "reply">
			<c:param name = "id" value="${ticketID}"/>
		</c:url>
	
	<tr>
		<td>${inq.ticketID}</td> 
		<td>${inq.studentID}</td>
		<td>${inq.name}</td>
		<td>${inq.email}</td>
		<td>${inq.faculty}</td>
		<td>${inq.year}</td>
		<td><a href = "${reply}"><input type = "button" value = "${inq.description}"class=btn btn-primary btn-sm">
			</a></td>
			
		
		<c:url value = "deleteInquiry.jsp" var = "inqDelete">
			<c:param name = "id" value = "${ticketID}"/>
			<c:param name = "stdID" value = "${stdID}"/>
			<c:param name = "dec" value = "${description}"/>
		</c:url>
		
		<td><a href = "${inqDelete}"><button>Delete inquiry</button></a></td>
	</tr>
		
		
		<input type = "hidden" name = "ticketID" value = "${inq.ticketID}">
	
	</c:forEach>
	
	
	</table>
			

	
</body>
 
</html>