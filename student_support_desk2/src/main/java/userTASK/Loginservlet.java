package userTASK;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username =  request.getParameter("uid");
		String password = request.getParameter("pass");
		
//		studentDButill.validate(username, password);
		
		try {
		List<student> stdDetails =studentDButill.validate(username, password);
		request.setAttribute("stdDetails", stdDetails);
		
		if(stdDetails.isEmpty()) {
			request.setAttribute("status", "failed");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("afterStudetLog.jsp");
			dis.forward(request, response);	
		}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		 
	}

}
  