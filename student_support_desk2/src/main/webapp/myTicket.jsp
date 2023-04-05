<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Ticket</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/myticketStyle.css"> 
      
	
</head>
<body>

    <header>
	
        <div class="wrapper">
            <img src="image/logo.png"  width="200" height="200">
                <ul class="menu"><br><br>
                   
                    
                    <li><a href="aboutUS.jsp">About Us</a></li>
					<li><a href="#">My Profile</a></li>
                    
                </ul>
             </div>
			 
        <div class="banner-text">
		 <form class="example" action="/action_page.php">
			<input type="text" placeholder="How can we help you?.." name="search">
  
		</form>
            <h1>STUDENT <span>SUPPORT</span></h1>
		
		<a href = "riseTicket.jsp"><button>Submit a ticket</button></a>
        <a href = "risedTicketServlet"><button>My Tickets</button></a>  
        </div>
    </header>

</body>
</html>
