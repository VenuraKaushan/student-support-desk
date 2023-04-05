<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>after admin login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/adminHomeStyle.css"> 
      
	
</head>
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
			 
        <div class="banner-text">
		 <form class="example" action="/action_page.php">
			<input type="text" placeholder="How can we help you?.." name="search">
  
		</form>
            <h1>UNIVERSITY <span>EDUCATION</span></h1><br>
		
		
        <a href = "http://localhost:8090/student_support_desk/inquiryServlet">
            <button >Inquiries List</button>
        </a>
            
        </div>
    </header>

</body>
</html>
