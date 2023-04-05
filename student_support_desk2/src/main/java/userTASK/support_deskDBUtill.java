package userTASK;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class support_deskDBUtill {
	
	private static boolean isSucces;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//validate the admin
	public static List<admin> validate(String username, String password)
	{
		ArrayList<admin> admin = new ArrayList<admin>();
				
		//input validation
		try {
			//db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
						
			String sql = "SELECT * FROM admin_details where AID = '"+username+"'and password = '"+password+"'";//Quarry
			rs = stmt.executeQuery(sql);//run Quarry and store in the rs
			
			
			if(rs.next()) {
				//collect data
				String aid = rs.getString(1);
				String passA = rs.getString(2);
				String name = rs.getString(3);
				
				admin admin1 = new admin(aid,passA,name);//create admin class object and passing values to the constructor
				admin.add(admin1);//pass to the arrayList
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//return admin arrayList
		return admin;
				
	}
	
	//get inquiries details
	public static List<Inquiry>getInquiryDetails()
	{
		
		ArrayList<Inquiry> Inquiries = new ArrayList<Inquiry>();
		
		try {
			//db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from inquiry_details ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int ticketID = rs.getInt(1);
				String studentID = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String faculty = rs.getString(5);
				int year = rs.getInt(6);
				String description = rs.getString(7);
				
				Inquiry inq = new Inquiry(ticketID, studentID, name,email,faculty,year,description);
				Inquiries.add(inq);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();

		}
			
		return Inquiries;
	}
	
	//reply to inquiries 
	public static boolean updateReply(String reply,int ticketID)
	{
		boolean isSuccess = false;
		
		try {
			//db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE inquiry_details SET reply = '"+reply+"' where ticketID = '"+ticketID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) 
			{
				isSuccess = true;
			}
			else 
			{
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();

		}
		
		return isSuccess;
	}
	
	//insert a ticket
	public static boolean riseTicket(String stNumber,String name,String email, String faculty, int year, String description) {
		
		boolean isSuccess = false;
		
		try {
			//db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into inquiry_details (ticketID,studentID,Name,email,faculty,year,description)values(0,'"+stNumber+"','"+name+"','"+email+"','"+faculty+"','"+year+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess =true;
			}
			else 
			{
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//delete inquiry
	public static boolean deleteInquiry (String ticketID )
	{
		int id = Integer.parseInt(ticketID);
		
		try {
			//db connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE from inquiry_details where ticketID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSucces = true;
			}
			else
			{
				isSucces = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucces;
	}
}
