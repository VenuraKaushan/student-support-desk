package userTASK;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class studentDButill {
	
	public static List <student> validate(String userName, String password)
	{
		ArrayList<student> std=  new ArrayList<>();
		
		//create Database connection
		
		String url = "jdbc:mysql://localhost:3306/student_support_desk";
		String user = "root";
		String pass = "#Vdb2001";
	
		
		
		
		//Validate

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con =  DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql =  "Select  * from student where username = '"+userName+"'and password='"+password+"'";
			ResultSet rs =  stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id =  rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				student c = new student(id,name,email,phone,userU,passU);
				
				std.add(c);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return std;
	}

}
