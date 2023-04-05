<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry reply page</title>
</head>
<!--css link-->
	<link rel="stylesheet" type="text/css" href="css/Login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<body>
	
	<% 
		String ticketID = request.getParameter("id");
	%>
	<form action="replyServlet" method="post">
		<input type = "hidden" value = "<%=ticketID%>" name = "ticketID" >
		
        <p>Please enter your Reply here:</p>
        <input type="text" name="reply" placeholder="Reply">
        <button type="submit">Reply</button> 
    </form>
</body>
</html>