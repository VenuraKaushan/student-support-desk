package userTASK;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/riseTicketServlet")
public class riseTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String studentID = request.getParameter("itNo");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String faculty = request.getParameter("faculty");
		String year = request.getParameter("year");
		String decscription = request.getParameter("description");
		
		int Year = Integer.parseInt(year);
		boolean isTrue = support_deskDBUtill.riseTicket(studentID, name, email, faculty, Year, decscription);
		
		if(isTrue == true)
		{
			RequestDispatcher  dis = request.getRequestDispatcher("myTicket.jsp");
			dis.forward(request, response);
				
		}
		else
		{
			RequestDispatcher  dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
