<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete inquiry</title>
</head>
<body>
	
	<%
		String ticketID = request.getParameter("id");
		String stdNum = request.getParameter("stdID");
		String description = request.getParameter("dec");
	%>

	<form action = "inquiryDeleteServlet" method = "get">
		<table>
			<tr>
				<th>Ticket ID</th>
				<th>Student ID</th>
				<th>Description</th>
			</tr>
				<td><input type = "text" name = "ticketid" value = "<%=ticketID%>" readonly></td>
				<td><input type = "text" name = "stdNum" value = "<%=stdNum%>" readonly></td>
				<td><input type = "text" name = "description" value = "<%=description%>" readonly></td>
				
			<tr>
				
			</tr>
		</table>
		<br>
		<input type = "submit" name = "submit" value = "delete inquiry">
	
	</form>
</body>
</html>