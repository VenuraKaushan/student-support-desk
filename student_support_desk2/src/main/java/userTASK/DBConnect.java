package userTASK;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/student_support_desk";
	private static String userName = "root";
	private static String pass = "#Vdb2001";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//work with java interfaces
			con = DriverManager.getConnection(url, userName, pass);//create connection for call to the db
			
		}catch(Exception e){
			
			System.out.println("Database connection is not success");
		}
		
		return con;
		
	}

}
