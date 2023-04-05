package userTASK;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//save input username and password to the variable
		String username = request.getParameter("aid");
		String password = request.getParameter("pass");
		
		RequestDispatcher dis = null;
		try {
			//store the validate details
			List<admin>adminDetails = support_deskDBUtill.validate(username, password); 
			request.setAttribute("adminDetails", adminDetails);//what should return to the admin profile
			
			
			if( adminDetails.isEmpty()) {
				request.setAttribute("status", "failed");
				dis = request.getRequestDispatcher("adminLogin.jsp");
				dis.forward(request, response);
			}else {
				dis = request.getRequestDispatcher("adminHomePage.jsp");
				dis.forward(request, response);
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
				

	}

}
